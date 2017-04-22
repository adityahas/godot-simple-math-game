extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	find_node("lbl_difficulty").set_text(utils.get_difficulty_text())
	utils.generate_gameplay()
	find_node("lbl_task").add_text(utils.task_string)
	pass


