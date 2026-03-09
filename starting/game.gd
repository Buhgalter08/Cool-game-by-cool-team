extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _input(event: InputEvent) -> void:
	#print(event)
	if event is InputEventKey:
		if event.pressed:
			if event.keycode==65:
				$Icon.position.x-=10
		if event.pressed:
			if event.keycode==68:
				$Icon.position.x+=10
		if event.pressed:
			if event.keycode==87:
				$Icon.position.y-=10
		if event.pressed:
			if event.keycode==83:
				$Icon.position.y+=10
