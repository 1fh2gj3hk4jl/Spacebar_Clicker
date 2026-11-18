extends Node2D

var shopitemprefab := preload("res://Prefabs/shop_item.tscn")
# formatted like
# [Name, Description, Price, Click Increase, Click per second]
var itemlist := [
["Autoclicker", "Gives you 1 clicks per second", 10, 0, 1],
["Helper Human", "[Gives you 5 clicks per tally click]", 20, 5, 0],
["The Gamer", "Gives you 10 clicks per tally click", 50, 10, 0],
["The Robot", "Gives you 10 clicks per second", 100, 0, 10],
[""]
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var itemnumber = 0
	for item in itemlist:
		var shopitem_scene : PackedScene = shopitemprefab
		var shopitem_instance := shopitem_scene.instantiate()
		add_child(shopitem_instance)
		shopitem_instance.itemname = item[0]
		shopitem_instance.description = item[1]
		shopitem_instance.price = item[2]
		shopitem_instance.clickincreaser = item[3]
		shopitem_instance.clickpersecond = item[4]
		shopitem_instance.position.x = itemnumber * 192
		shopitem_instance.assignvalues()
		itemnumber += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
