## Main entry point for the game.
## Responsible for setting up the World layers and coordinating high-level systems.
class_name MainGame
extends Node

const TEST_LEVEL_01: String = "uid://boyhwklqb03pb"
const PLAYER_SCENE_UID: String = "uid://c6257x7v2bcq8"

var player: Player = null
var current_level = null

# Game World root nodes
@onready var level_root: Node2D = %LevelRoot
@onready var entity_root: Node2D = %EntityRoot
@onready var effects_root: Node2D = %EffectsRoot

# UI Root Nodes (FUTURE)
@onready var hud_root: Control = %HudRoot
@onready var pause_root: Control = %PauseRoot
@onready var transition_root: Control = %TransitionRoot


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_init_player()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _init_player() -> void:
	var player_scene: PackedScene = ResourceLoader.load(PLAYER_SCENE_UID) as PackedScene
	if player_scene == null:
		push_error("Could not load player scene: " + PLAYER_SCENE_UID)
		return

	player = player_scene.instantiate() as Player
	if player == null:
		push_error("Loaded player scene does not extend player: " + PLAYER_SCENE_UID)
		return

	entity_root.add_child(player)
