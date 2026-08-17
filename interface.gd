@tool
extends Control

var interval = 1.0

# Called when the node enters the scene tree for the first time.
func _enter_tree() -> void:
	$Foxy.visible = false
	$Foxy.position = Vector2i(size.x/2, size.y/2)
	$Foxy.scale = Vector2(1 * (size.x / 1920), 1 * (size.y/1080))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	interval -= delta
	if interval <= 0:
		interval = 1
		if randi_range(1, 1000) == 1:
			$Foxy.visible = true
			$Foxy.play("default")
			$SFX.play()
			await $Foxy.animation_finished
			$Foxy.visible = false
