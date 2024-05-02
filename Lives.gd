extends TabBar

@onready var lives = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if lives != self.get_meta("lives") && lives != 3:
		self.set_tab_title(lives + 1,"X")
		lives = lives + 1
	if lives == 3:
		get_node("../Game Over Sound").play()
		var gameOver = get_node("../Game Over")
		gameOver.show()
