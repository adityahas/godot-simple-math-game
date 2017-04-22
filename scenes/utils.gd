extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var current_difficulty

const DIFFICULTY_EASY = 0
const DIFFICULTY_MEDIUM = 1
const DIFFICULTY_HARD = 2


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func get_difficulty_text():
	if current_difficulty == DIFFICULTY_EASY:
		return "Easy"
	if current_difficulty == DIFFICULTY_MEDIUM:
		return "Medium"
	if current_difficulty == DIFFICULTY_HARD:
		return "Hard"
	
	pass



var numb_operations
var numb_limit_start
var numb_limit_end
var numb_result
var task_string

func generate_gameplay():
	if current_difficulty == DIFFICULTY_EASY:
		generate_gameplay_easy()
	pass

func generate_gameplay_easy():
	numb_operations = 5
	numb_limit_start = 0
	numb_limit_end = 10
	var operations_array = ["-", "+"]
	
	randomize()
	
	for i in range(numb_operations):
		print(i)
		task_string = str(task_string, rand_range(numb_limit_start, numb_limit_end))
		if i < numb_operations-1:
			task_string = str(task_string, operations_array[rand_range(0, operations_array.size())])
		else:
			task_string = str(task_string, "\n=")
	
	pass
