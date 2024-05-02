extends Button

@onready var answer

# Called when the node enters the scene tree for the first time.
func _ready():
	self.pressed.connect(self._button_pressed)
	answer = get_node("..")

func _button_pressed():
	answer.visible = false

