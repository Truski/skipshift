extends KinematicBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vel = Vector3()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_forward"):
		vel = Vector3(0, 5, 0)
		move_and_slide(vel, Vector3(0, 1, 0))
	if Input.is_action_pressed("move_backward"):
		vel = Vector3(0, -5, 0)
		move_and_slide(vel, Vector3(0, 1, 0))
	if Input.is_action_pressed("move_right"):
		vel = Vector3(5, 0, 0)
		move_and_slide(vel, Vector3(0, 1, 0))
	if Input.is_action_pressed("move_left"):
		vel = Vector3(-5, 0, 0)
		move_and_slide(vel, Vector3(0, 1, 0))
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		vel = Vector3(0, 0, 5)
		move_and_slide(vel, Vector3(0, 1, 0))
	if Input.is_mouse_button_pressed(BUTTON_RIGHT):
		vel = Vector3(0, 0, -5)
		move_and_slide(vel, Vector3(0, 1, 0))