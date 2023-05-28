extends Node2D

@onready var player: movement = $Player
@onready var terrain_map: TerrainMap = $TerrainMap

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_conenct_signals()

func _conenct_signals() -> void:
	player.moved.connect(func (new_global_position):
		terrain_map.update_map.emit(new_global_position, true))
