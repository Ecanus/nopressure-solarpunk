extends StaticBody2D

# This is the tutorial that I followed for this: https://www.youtube.com/watch?v=pQINWFKc9_k

@onready var interactable: Area2D = $Interactable
@onready var lildonuts: Sprite2D = $Lildonuts
@onready var animated_sprite_2d: AnimatedSprite2D = $"../Player/AnimatedSprite2D"


func _ready() -> void:
	interactable.interact = _on_interact
	
	
func _on_interact():
	if lildonuts.frame == 0:
		lildonuts.frame = 1
		interactable.is_interactable = false
		animated_sprite_2d.play("wave")
		print("the player ate a donut")
