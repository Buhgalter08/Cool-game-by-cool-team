extends Node2D
var coinsCount=0;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _input(event: InputEvent) -> void:
	#print(event)
	#if($Icon.position==$Coin.position):
		#$Coin.visible = false
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
				
func _on_area_entered(area: Area2D) -> void:
	area.queue_free()


func _on_area_2d_area_entered(area: Area2D) -> void:
	coinsCount+=1;
	area.queue_free()
	$Label.text="Coins:"+str(coinsCount);
	
	
	
