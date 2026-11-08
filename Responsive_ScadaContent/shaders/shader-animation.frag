#version 440

layout(location = 0) in vec2 qt_TexCoord0;
layout(location = 0) out vec4 fragColor;

layout(std140, binding = 0) uniform buf {
    mat4 qt_Matrix;
    float qt_Opacity;
    float time;
    vec2 resolution;
    float radius;
} ubuf;

void main()
{
    // Qt Quick texture coordinates start at the top-left. Flip Y to retain
    // the same orientation as WebGL's gl_FragCoord-based implementation.
    vec2 pixel = vec2(qt_TexCoord0.x, 1.0 - qt_TexCoord0.y)
               * ubuf.resolution;
    vec2 uv = (pixel * 2.0 - ubuf.resolution)
            / min(ubuf.resolution.x, ubuf.resolution.y);

    float t = ubuf.time * 0.05;
    float lineWidth = 0.002;
    float radialDistance = length(uv);
    float diagonalPattern = mod(uv.x + uv.y, 0.2);
    vec3 color = vec3(0.0);

    // i == 0 always contributes zero, so skip it. Compute RGB together as a
    // vector and reuse the radial/diagonal terms instead of recalculating
    // them for every channel and band.
    for (int i = 1; i < 5; ++i) {
        float fi = float(i);
        vec3 channelTime = vec3(t, t - 0.01, t - 0.02) + fi * 0.01;
        vec3 denominator = abs(
            fract(channelTime) * 5.0 - radialDistance + diagonalPattern);
        color += lineWidth * fi * fi
               / max(denominator, vec3(0.0001));
    }

    // ShaderEffect itself has no rounded clip, so apply an antialiased
    // rounded-rectangle mask in the fragment shader.
    vec2 halfSize = ubuf.resolution * 0.5;
    vec2 corner = abs(pixel - halfSize)
                - (halfSize - vec2(ubuf.radius));
    float distanceToEdge = length(max(corner, vec2(0.0)))
                         + min(max(corner.x, corner.y), 0.0)
                         - ubuf.radius;
    float coverage = 1.0 - smoothstep(-1.0, 1.0, distanceToEdge);

    // Qt Quick expects premultiplied alpha from custom fragment shaders.
    fragColor = vec4(color * coverage, coverage) * ubuf.qt_Opacity;
}
