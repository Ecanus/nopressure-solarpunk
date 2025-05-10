extends StaticBody2D

# This is the tutorial that I followed for this: https://www.youtube.com/watch?v=pQINWFKc9_k

@onready var interactable: Area2D = $Interactable
@onready var turbine: Sprite2D = $turbine
@onready var animated_sprite_2d: AnimatedSprite2D = $"../Player/AnimatedSprite2D" 


func _ready() -> void:
	interactable.interact = _on_interact
	turbine.hide()
	
	
func _on_interact():
	print("This is turbine")
	turbine.show()
		#print("the player ate a donut")
