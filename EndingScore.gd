extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "\n\n\nYour Final Score is %d\nClick To Go Back To The Menu" % get_node("../../Score").get_meta("score")
