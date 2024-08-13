extends Node2D

var recorded_points = []
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	if event.is_class("InputEventScreenDrag"):
		print(event)
		recorded_points.push_back(event.position)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_timer_timeout():
	if recorded_points.size() > 8:
		$Line2D.clear_points()
		for point in recorded_points:
			$Line2D.add_point(point)
			recorded_points.pop_front()
	pass # Replace with function body.
