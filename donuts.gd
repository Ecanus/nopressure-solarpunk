extends StaticBody2D

# This is the tutorial that I followed for this: https://www.youtube.com/watch?v=pQINWFKc9_k

@onready var interactable: Area2D = $Interactable
@onready var sprite_2d: Sprite2D = $"Lildonuts"

func _ready() -> void:
	interactable.interact = _on_interact
	
	
func _on_interact():
	if sprite_2d.frame == 0:
		sprite_2d.frame = 1
		interactable.is_interactable = false
		print("the player ate a donut")
