extends Node2D


@export var side_bounds = [40,280]
@export var top_bounds = [20,440]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func move_and_clamp(global_pos : Vector2):
	
	global_pos.x = clamp(global_pos.x,side_bounds[0],side_bounds[1])
	global_pos.y = clamp(global_pos.y,top_bounds[0],top_bounds[1])
	$CharacterBody2D.global_position = global_pos
	pass
		
func _input(event):
	if event.is_class("InputEventScreenDrag"):
		#print(event)
		move_and_clamp(event.position)

	if event.is_class("InputEventScreenTouch"):
		move_and_clamp(event.position)





