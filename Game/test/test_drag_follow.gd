extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.





func _on_light_1_pressed():
	$Light2/Line2D.visible = false
	$Light1/Line2D.visible = true
	pass # Replace with function body.


func _on_light_2_pressed():
	$Light1/Line2D.visible = false
	$Light2/Line2D.visible = true
	pass # Replace with function body.
