extends StaticBody2D

# This is the tutorial that I followed for this: https://www.youtube.com/watch?v=pQINWFKc9_k

@onready var interactable: Area2D = $Interactable
@onready var turbine: Sprite2D = $turbine
@onready var animated_sprite_2d: AnimatedSprite2D = $"../Player/AnimatedSprite2D" 


func _ready() -> void:
	interactable.interact = _on_interact
	
	
func _on_interact():
	if turbine.frame == 0:
		turbine.frame = 1
		interactable.is_interactable = false
		if $turbine:
			$turbine.queue_free()
		print("the player ate a donut")
