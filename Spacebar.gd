extends Node2D
var spacebar_counter := 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("spacebar"):
		spacebar_counter += 1 
		get_node("spacebar_counter") 
		set_spacebar_counter(spacebar_counter + 1)
