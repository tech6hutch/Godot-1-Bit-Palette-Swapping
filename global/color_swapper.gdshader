shader_type canvas_item;

// How close colors have to be to be considered the same. If you don't use any
// other colors besides the ones you're replacing, it doesn't really matter.
const float COLOR_MATCH_THRESHOLD = 0.1;

uniform sampler2D screen_texture: hint_screen_texture;

// The colors to replace.
uniform vec3 original_dark: source_color;
uniform vec3 original_light: source_color;
// The colors to replace with.
uniform vec3 replacement_dark: source_color;
uniform vec3 replacement_light: source_color;

void fragment() {
	vec4 screen_color = texture(screen_texture, SCREEN_UV);
	if (distance(screen_color.rgb, original_dark) < COLOR_MATCH_THRESHOLD) {
		screen_color.rgb = replacement_dark;
	} else if (distance(screen_color.rgb, original_light) < COLOR_MATCH_THRESHOLD) {
		screen_color.rgb = replacement_light;
	}
	COLOR = screen_color;
}
