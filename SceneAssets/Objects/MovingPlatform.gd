extends MeshInstance

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocity = 1
var moving_left = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translate(Vector3(0, 0, velocity * .05))
	if moving_left:
		velocity += delta
	else:
		velocity -= delta
	if velocity > 1 or velocity < -1:
		moving_left = !moving_left