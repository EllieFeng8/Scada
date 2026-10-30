#version 440
layout(location = 0) in vec4 qt_Vertex;
layout(location = 1) in vec2 qt_MultiTexCoord0;
layout(location = 0) out vec2 coord;
layout(location = 1) out vec2 pixelCoord;
layout(location = 2) out vec2 srcSize;
layout(std140, binding = 0) uniform buf {
    mat4 qt_Matrix;
    float qt_Opacity;
};
layout(binding = 1) uniform sampler2D source;
void main() {
    srcSize = textureSize(source, 0);
    coord = qt_MultiTexCoord0;
    pixelCoord = coord*srcSize;

    gl_Position = qt_Matrix * qt_Vertex;
}
