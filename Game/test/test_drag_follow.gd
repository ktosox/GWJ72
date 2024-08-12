extends Node2D

var is_pressed = false
var is_pressed_2 = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_pressed:
		$TouchScreenButton.position = get_local_mouse_position() - Vector2(32,32)
	if is_pressed_2:
		$CharacterBody2D.position = get_local_mouse_position()

func _on_touch_screen_button_pressed():
	is_pressed = true
	pass # Replace with function body.


func _on_touch_screen_button_released():
	is_pressed = false
	pass # Replace with function body.


func _on_character_body_2d_input_event(viewport, event, shape_idx):
	if event.is_class("InputEventScreenTouch"):
		is_pressed_2 = event.pressed
		print(event)
	pass # Replace with function body.
