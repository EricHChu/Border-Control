extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	var rng = RandomNumberGenerator.new()
	set_meta("data" ,rng.randi_range(19,60))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "Age %d" % get_meta("data")


func _on_pass_pressed():
	var rng = RandomNumberGenerator.new()
	set_meta("data" ,rng.randi_range(19,60))


func _on_fail_pressed():
	var rng = RandomNumberGenerator.new()
	set_meta("data" ,rng.randi_range(19,60))
