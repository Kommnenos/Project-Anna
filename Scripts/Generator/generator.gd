extends Node2D

func _ready():
	var salpeter_generator = Salpeter.new()
	print(salpeter_generator.salpeter_generation(0.08, 110, 5))

func _process(delta):
	pass
