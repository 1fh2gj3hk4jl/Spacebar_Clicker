extends Node2D

var shopitemprefab := preload("res://Prefabs/shop_item.tscn")
var itemnumber = 0
var itemlist := [
["Autoclicker", "Gives you 1 clicks per second", 10],
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x -= 5 * len(itemlist)
	for item in itemlist:
		var shopitem_scene : PackedScene = shopitemprefab
		var shopitem_instance := shopitem_scene.instantiate()
		add_child(shopitem_instance)
		shopitem_instance.itemname = item[0]
		shopitem_instance.description = item[1]
		shopitem_instance.price = item[2]
		shopitem_instance.position.x = itemnumber * 10
		itemnumber += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
