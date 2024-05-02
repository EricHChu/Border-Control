extends TextureRect

@onready var nations = ["Canada", "USA", "Mexico","Germany"]
@onready var purposes = ["Pleasure", "Business","Sport"]
@onready var declarations = ["Alcohol, 1 Weapon","None","Alcohol","2 Weapons","1 Weapons","Alcohol, 2 Weapons"]
@onready var vehicles = ["Pickup Truck","Sports Car","Suspicious White Van","Standard SUV"]
@onready var rng = RandomNumberGenerator.new()
@onready var lie
@onready var lies = [-1,-1]
@onready var label = get_node("Label")
@onready var questions = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	lie = rng.randi_range(0,2)
	if lie == 0:
		lie = true
		lies[0] = rng.randi_range(0,4)
		lies[1] = rng.randi_range(0,4)
	else:
		lie = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _reset():
	lie = rng.randi_range(0,2)
	if lie == 0:
		lie = true
		lies[0] = rng.randi_range(0,4)
		lies[1] = rng.randi_range(0,4)
	else:
		lie = false
		lies[0] = -1
		lies[1] = -1
	questions = 0
	print(lie)

func _on_button_1_pressed():
	if questions < 3:
		if lies.has(0):
			label.text = "I am %d years old" % rng.randi_range(19,60)
		else:
			label.text = "I am %d years old" % get_node("../ID/MarginContainer/HSplitContainer/VBoxContainer/Button1").get_meta("data")
		self.visible = true
		questions = questions + 1

func _on_button_2_pressed():
	if questions < 3:
		if lies.has(1):
			label.text = "I am from " + nations[rng.randi_range(0,3)]
		else:
			label.text = "I am from " + nations[get_node("../ID/MarginContainer/HSplitContainer/VBoxContainer/Button2").get_meta("data")]
		self.visible = true
		questions = questions + 1


func _on_button_3_pressed():
	if questions < 3:
		if lies.has(2):
			label.text = "I am here for " + purposes[rng.randi_range(0,2)]
		else:
			label.text = "I am here for " + purposes[get_node("../ID/MarginContainer/HSplitContainer/VBoxContainer/Button3").get_meta("data")]
		self.visible = true
		questions = questions + 1


func _on_button_4_pressed():
	if questions < 3:
		if lies.has(3):
			label.text = "I am carrying " + declarations[rng.randi_range(0,4)]
		else:
			label.text = "I am carrying " + declarations[get_node("../ID/MarginContainer/HSplitContainer/VBoxContainer/Button4").get_meta("data")]
		self.visible = true
		questions = questions + 1


func _on_button_5_pressed():
	if questions < 3:
		if lies.has(4):
			label.text = "I drive a " + vehicles[rng.randi_range(0,3)]
		else:
			label.text = "I drive a " + vehicles[get_node("../ID/MarginContainer/HSplitContainer/VBoxContainer/Button5").get_meta("data")]
		self.visible = true
		questions = questions + 1


func _on_pass_pressed():
	if(!lie):
		get_node("../Correct Sound").play()
		var score = get_node("../Score")
		score.set_meta("score",1 + score.get_meta("score"))
	else:
		get_node("../Wrong Sound").play()
		var lives = get_node("../Lives")
		lives.set_meta("lives",1 + lives.get_meta("lives"))
	_reset()


func _on_fail_pressed():
	if(lie):
		get_node("../Correct Sound").play()
		var score = get_node("../Score")
		score.set_meta("score",1 + score.get_meta("score"))
	else:
		get_node("../Wrong Sound").play()
		var lives = get_node("../Lives")
		lives.set_meta("lives",1 + lives.get_meta("lives"))
	_reset()
