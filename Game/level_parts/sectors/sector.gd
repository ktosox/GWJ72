extends Node2D

signal progress_gained

@export var progess_unlocked = false

func reset_sector():
	progess_unlocked = false
	pass


func _on_progress_detector_body_entered(body):
	if !progess_unlocked:
		emit_signal("progress_gained")
		progess_unlocked = true
	pass # Replace with function body.
