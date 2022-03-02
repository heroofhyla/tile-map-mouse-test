extends Node2D

var last_click_cell = Vector2.ZERO

func get_mouse_pos() -> Vector2:
	return get_global_mouse_position()

func get_mouse_cell() -> Vector2:
	return $TileMap.world_to_map(get_mouse_pos())

func _unhandled_input(event) -> void:
	if event is InputEventMouseButton:
		handle_mouse_click(event)

func handle_mouse_click(event: InputEventMouseButton) -> void:
	if event.button_index == BUTTON_LEFT and event.pressed:
		last_click_cell = get_mouse_cell()
