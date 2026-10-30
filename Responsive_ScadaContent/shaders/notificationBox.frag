#version 440
layout(location = 0) in vec2 coord;
layout(location = 1) in vec2 pixelCoord;
layout(location = 2) in vec2 srcSize;
layout(location = 0) out vec4 fragColor;

layout(std140, binding = 0) uniform buf {
    mat4 qt_Matrix;
    float qt_Opacity;
    vec4 qt_Color;
    float fade;
};
layout(binding = 1) uniform sampler2D source;


void main() {
    vec4 col = texture(source,coord);
    float a = col.a * qt_Opacity;
    a *= smoothstep(0.0,fade,pixelCoord.x);

    fragColor = vec4(col.rgb*a, a);
}
