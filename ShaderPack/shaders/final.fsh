#version 150

uniform sampler2D colortex0;
in vec2 texcoord;
out vec4 fragColor;

void main() {
    vec4 scene = texture(colortex0, texcoord);
    vec3 inverted = 1.0 - scene.rgb;
    vec3 glitchColor = inverted * vec3(1.0, 0.2, 0.2);
    fragColor = vec4(glitchColor, scene.a);
}
