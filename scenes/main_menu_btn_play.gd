extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here 
	connect("pressed", self, "_on_pressed")
	pass

func _on_pressed():
	stage_manager.change_stage(stage_manager.STAGE_LEVEL_SELECTION)
	pass