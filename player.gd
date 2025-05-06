extends CharacterBody2D

var speed: int = 300
var click_position = Vector2()
var target_position = Vector2()

# Click-to-move character code
func _ready() -> void:
	click_position = position

func _physics_process(_float) -> void:
	if Input.is_action_just_pressed("left_click"):
		click_position = get_global_mouse_position()
	if position.distance_to(click_position) > 3:
		target_position = (click_position - position).normalized()
		velocity = target_position * speed
		move_and_slide()
