extends Sprite2D

var itemname := "[No assigned value]"
var description := "[No assigned value]"
var price := -1
var ownedamount := 0 #Do not assign this value

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func assignvalues() -> void:
	get_node("Name").text = itemname
	get_node("Description").text = description
	get_node("Price").text = str(price) + " clicks"
