extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var salpeter_generator = Salpeter.new()
	salpeter_generator.salpeter_generation(0.08, 110, 5000000)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
