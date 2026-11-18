extends Node2D
var spacebar_counter := 0
var clicks_per_second := 0
var per1second := 0.0
var clicks_per_click := 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("spacebar"):
		set_spacebar_counter(spacebar_counter + clicks_per_click)
		
	if per1second >= 1:
		set_spacebar_counter(spacebar_counter + clicks_per_second)
		per1second = 0
	per1second += delta

func set_spacebar_counter(new_spacebar_counter: int) -> void:
	spacebar_counter = new_spacebar_counter
	get_node("spacebar counter").text = str(spacebar_counter)
	
func set_clicks_per_second(value :int) -> void:
	clicks_per_second += value
	
func set_clicks_per_click(value :int) -> void:
	clicks_per_click += value
