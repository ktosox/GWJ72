extends Area2D

signal lose_game




func _on_body_entered(body : RigidBody2D):
	emit_signal("lose_game")
	pass # Replace with function body.

