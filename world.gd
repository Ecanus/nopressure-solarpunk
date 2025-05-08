extends Node2D

@onready var tile_map: TileMapLayer = $floor
#+@onready var cell_pos_x: int = 0
#@onready var cell_pos_y: int = 0
@onready var cell_pos: Vector2i 

func _ready() -> void:
	pass
	
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("tile_test"):
		var mouse_pos: Vector2 = get_global_mouse_position()
		#var mouse_pos: Vector2 = get_local_mouse_position()
		var tile_map_pos: Vector2i = tile_map.local_to_map(mouse_pos)
		# Tile 1
		if tile_map_pos.x >= 11 && tile_map_pos.x <= 13 and tile_map_pos.y >= -3 && tile_map_pos.y <= 0 :
			cell_pos.x = -4
			cell_pos.y = -3
		# Tile 2
		if tile_map_pos.x >= 13 && tile_map_pos.x <= 16 and tile_map_pos.y >= -3 && tile_map_pos.y <= 0 :
			cell_pos.x = -3
			cell_pos.y = -3
		# Tile 3
		if tile_map_pos.x >= 16 && tile_map_pos.x <= 18 and tile_map_pos.y >= -3 && tile_map_pos.y <= 0 :
			cell_pos.x = -2
			cell_pos.y = -3
		# Tile 4
		if tile_map_pos.x >= 11 && tile_map_pos.x <= 13 and tile_map_pos.y >= 0 && tile_map_pos.y <= 2:
			cell_pos.x = -4
			cell_pos.y = -2
		# Tile 5
		if tile_map_pos.x >= 13 && tile_map_pos.x <= 16 and tile_map_pos.y >= 0 && tile_map_pos.y <= 2:
			cell_pos.x = -3
			cell_pos.y = -2
		# Tile 6
		if tile_map_pos.x >= 16 && tile_map_pos.x <= 18 and tile_map_pos.y >= 0 && tile_map_pos.y <= 2:
			cell_pos.x = -2
			cell_pos.y = -2
		# Tile 7
		if tile_map_pos.x >= 11 && tile_map_pos.x <= 13 and tile_map_pos.y >= 2 && tile_map_pos.y <= 4:
			cell_pos.x = -4
			cell_pos.y = -1
		# Tile 8
		if tile_map_pos.x >= 13 && tile_map_pos.x <= 16 and tile_map_pos.y >= 2 && tile_map_pos.y <= 4:
			cell_pos.x = -3
			cell_pos.y = -1
		# Tile 9
		if tile_map_pos.x >= 16 && tile_map_pos.x <= 18 and tile_map_pos.y >= 2 && tile_map_pos.y <= 4:
			cell_pos.x = -2
			cell_pos.y = -1
		tile_map.set_cell(cell_pos, 0, Vector2i(1,0))

		
		#This gets the global mouse position
		#print(mouse_pos)
		#This gets the tile position
		#print(tile_map_pos)
		#This gets the cell position
		#print (cell_pos)
		
		
