extends Sprite2D

var itemname := "[No assigned value]"
var description := "[No assigned value]"
var price := 0
var clickincreaser := 0 
var clickpersecond := 0
var ownedamount := 0 #Do not assign this value


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func assignvalues() -> void:
	get_node("Name").text = itemname
	get_node("Description").text = description
	get_node("Price").text = str(price) + " clicks"
	
func buy() -> void:
	ownedamount += 1
	get_node("Amount").text = "x" + str(ownedamount) 

func _on_button_pressed() -> void:
	var click_amount = get_parent().get_parent().get_node("Spacebar").spacebar_counter
	if click_amount >= price:
		get_parent().get_parent().get_node("Spacebar").set_spacebar_counter(click_amount - price)
		get_parent().get_parent().get_node("Spacebar").set_clicks_per_click(clickincreaser)
		get_parent().get_parent().get_node("Spacebar").set_clicks_per_second(clickpersecond)
		buy();
		
	
