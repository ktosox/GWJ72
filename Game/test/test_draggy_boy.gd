extends PinJoint2D

var is_pressed_2 = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if is_pressed_2:
		$CharacterBody2D.global_position = get_global_mouse_position()


func _on_character_body_2d_input_event(viewport, event, shape_idx):
	if event.is_class("InputEventScreenTouch"):
		is_pressed_2 = event.pressed
		if event.pressed:
			viewport.set_input_as_handled()
	pass # Replace with function body.

