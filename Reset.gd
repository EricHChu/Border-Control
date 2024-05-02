extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _reset():
	get_node("../ID").visible = false
	get_node("../Answer").visible = false

func _on_pressed():
	var person = get_node("../CharacterBody2D")
	person.velocity = Vector2(-1100,0)
	person.get_node("AnimationPlayer").speed_scale = 2
	_reset()


func _on_fail_pressed():
	var person = get_node("../CharacterBody2D")
	person.velocity = Vector2(1100,0)
	person.get_node("AnimationPlayer").speed_scale = 2
	_reset()
