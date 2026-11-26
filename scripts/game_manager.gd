extends Node
var score = 0

@onready var scoreboard: Label = $"../CanvasLayer/Control/scoreboard"



func add_point():
	score += 1
	scoreboard.text = "" + str(score) + " coins"
	print(score )
