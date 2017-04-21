extends CanvasLayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

const STAGE_GAME = "res://stages/gameplay_stage.tscn"
const STAGE_LEVEL_SELECTION = "res://stages/level_selection_stage.tscn"
const STAGE_MENU = "res://stages/menu_stage.tscn"

signal stage_changed
var is_changing = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func change_stage(stage_path):
	if is_changing: return
	
	is_changing = true
	get_tree().get_root().set_disable_input(true)
	
	#fade to black
	get_node("anim").play("fade_in")
	yield(get_node("anim"), "finished")
	
	#change stage
	get_tree().change_scene(stage_path)
	emit_signal("stage_changed")
	
	#fade from white
	get_node("anim").play("fade_out")
	yield(get_node("anim"), "finished")
	
	is_changing = false
	get_tree().get_root().set_disable_input(false)
	
	print("change stage to "+stage_path)
	pass