extends Control

var left_pressed = 0

var right_pressed = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$BlankCircle.position.x += (right_pressed - left_pressed) * delta * 3.0
	pass


func _on_left_pressed():
	left_pressed = 1
	pass # Replace with function body.


func _on_right_pressed():
	right_pressed = 1
	pass # Replace with function body.


func _on_left_released():
	left_pressed = 0
	pass # Replace with function body.


func _on_right_released():
	right_pressed = 0
	pass # Replace with function body.
