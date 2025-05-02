extends Sprite2D

@export var rate: float = 0.0;

func _process(delta: float) -> void:
	rotate(rate * delta)
