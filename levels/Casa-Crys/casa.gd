extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_minimapabuttoncasacrys_pressed():
	get_tree().change_scene_to_file("res://levels/Mini-mapa/mini_mapa_aberto.tscn")


func _on_minicadernocasaabandonada_pressed():
	get_tree().change_scene_to_file("res://levels/Casa-Crys/mini-caderno-casa-Crys.tscn")
