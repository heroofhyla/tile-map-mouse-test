extends Label

onready var game = get_node("/root/Game")
func _process(_delta):
	text = str(game.get_mouse_pos()) + "\n" + str(game.get_mouse_cell()) + "\n" + "Last clicked cell: " + str(game.last_click_cell)
	
