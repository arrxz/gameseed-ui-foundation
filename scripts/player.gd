extends CharacterBody2D

const SPEED := 90.0

@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):

	var direction := Input.get_vector(
		"move_left",
		"move_right",
		"move_up",
		"move_down"
	)

	velocity = direction * SPEED

	if direction != Vector2.ZERO:
		animated_sprite.play("Walk")
		
		# Logika balik sprite yang benar
		if direction.x < 0:
			animated_sprite.flip_h = true
		elif direction.x > 0:
			animated_sprite.flip_h = false
	else:
		animated_sprite.play("Idle")

	move_and_slide()
