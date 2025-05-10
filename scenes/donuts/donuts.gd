extends StaticBody2D

# This is the tutorial that I followed for this: https://www.youtube.com/watch?v=pQINWFKc9_k

@onready var interactable: Area2D = $Interactable
@onready var animated_sprite_2d: AnimatedSprite2D = $"../Player/AnimatedSprite2D" 
#
#
func _ready() -> void:
	interactable.interact = _on_interact
	
	
func _on_interact():
	print("This is donuts")
	if $Lildonuts.frame == 0:
		$Lildonuts.frame = 1
		interactable.is_interactable = false
		if $Lildonuts:
			$Lildonuts.queue_free()
		print("the player ate a donut")
	else:
		pass
