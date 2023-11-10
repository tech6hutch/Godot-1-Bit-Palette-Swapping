extends CanvasLayer


var dark: Color:
	get:
		return shader_material.get_shader_parameter("replacement_dark")
	set(value):
		shader_material.set_shader_parameter("replacement_dark", value)

var light: Color:
	get:
		return shader_material.get_shader_parameter("replacement_light")
	set(value):
		shader_material.set_shader_parameter("replacement_light", value)


@onready var color_rect := $ColorRect
@onready var shader_material := color_rect.material as ShaderMaterial
