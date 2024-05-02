extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	move_and_slide()

func _on_middle_body_entered(body):
	if body == self:
		self.velocity = Vector2(0,0)
		self.get_node("AnimationPlayer").speed_scale = 0.5
		get_node("../ID").visible = true


func _on_page_body_exited(body):
	if body == self:
		self.position = Vector2(1500,0)
		self.velocity = Vector2(-1100,0)
