extends Button

@onready var declarations = ["Alcohol, 1 Weapon","None","Alcohol","2 Weapons","1 Weapons","Alcohol, 2 Weapons"]

# Called when the node enters the scene tree for the first time.
func _ready():
	var rng = RandomNumberGenerator.new()
	set_meta("data" ,rng.randi_range(0,5))
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "Declarations: " + declarations[get_meta("data")]


func _on_pass_pressed():
	var rng = RandomNumberGenerator.new()
	set_meta("data" ,rng.randi_range(0,5))


func _on_fail_pressed():
	var rng = RandomNumberGenerator.new()
	set_meta("data" ,rng.randi_range(0,5))
