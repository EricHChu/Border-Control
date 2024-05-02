extends Button

@onready var nations = ["Canada", "USA", "Mexico","Germany"]

# Called when the node enters the scene tree for the first time.
func _ready():
	var rng = RandomNumberGenerator.new()
	set_meta("data" , rng.randi_range(0,3))
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "Nationality: " + nations[get_meta("data")]


func _on_pass_pressed():
	var rng = RandomNumberGenerator.new()
	set_meta("data" , rng.randi_range(0,3))


func _on_fail_pressed():
	var rng = RandomNumberGenerator.new()
	set_meta("data" , rng.randi_range(0,3))
