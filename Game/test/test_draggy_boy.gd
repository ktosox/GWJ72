extends Node2D

var is_pressed_2 = false

@export var side_bounds = [10,310]
@export var top_bounds = [20,440]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _physics_process(delta):
	#if is_pressed_2:
		#$CharacterBody2D.global_position = get_global_mouse_position()
		
func _input(event):
	if event.is_class("InputEventScreenDrag") and is_pressed_2:
		#print(event)
		$CharacterBody2D.global_position = event.position
		$CharacterBody2D.global_position.x = clamp($CharacterBody2D.global_position.x,side_bounds[0],side_bounds[1])
		$CharacterBody2D.global_position.y = clamp($CharacterBody2D.global_position.y,top_bounds[0],top_bounds[1])

func _on_character_body_2d_input_event(viewport, event, shape_idx):
	if event.is_class("InputEventScreenTouch"):
		is_pressed_2 = event.pressed
		if event.pressed:
			viewport.set_input_as_handled()
	pass # Replace with function body.



