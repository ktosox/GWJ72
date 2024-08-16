extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	for sector in $Sectors.get_children():
		sector.connect("progress_gained",Callable(self,"move_sectors"))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass

func move_sectors():
	for sector in $Sectors.get_children():
		sector.global_position.y += 100
	
	pass


func _on_triangle_eater_lose_game():
	get_tree().reload_current_scene()
	pass # Replace with function body.


