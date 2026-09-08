shader_type canvas_item;

void fragment() {
    vec4 tex = texture(TEXTURE, UV);

    if (tex.a > 0.0) {
        COLOR = vec4(0.35, 0.35, 0.35, tex.a);
    } else {
        COLOR = vec4(0.0);
    }
}
