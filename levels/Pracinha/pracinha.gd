extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_minimapabuttonpracinha_pressed():
	get_tree().change_scene_to_file("res://levels/Mini-mapa/mini_mapa_aberto.tscn")


func _on_minicadernopracinha_pressed():
	get_tree().change_scene_to_file("res://levels/Pracinha/mini-caderno-pracinha.tscn")
