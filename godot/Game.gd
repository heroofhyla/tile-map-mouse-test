extends Node2D


func get_mouse_pos() -> Vector2:
	return get_global_mouse_position()

func get_mouse_cell() -> Vector2:
	return $TileMap.world_to_map(get_mouse_pos())
