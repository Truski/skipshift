extends KinematicBody

const speed = 5
var yaw : float = 0.0

func _ready():
	pass

func _physics_process(delta):
	
	var dir = Vector3(0, 0, 0)
	var camera = get_node("Camera")
	
	if Input.is_action_pressed("move_forward"):
		dir.x = camera.get_center_ray_normal().x
		dir.z = camera.get_center_ray_normal().z
	if Input.is_action_pressed("move_backward"):
		dir.x = -1 * camera.get_center_ray_normal().x
		dir.z = -1 * camera.get_center_ray_normal().z
	if Input.is_action_pressed("move_left"):
#		dir.x = -1 * camera.get_center_ray_normal().z
#		dir.z = -1 * camera.get_center_ray_normal().x
		pass
	if Input.is_action_pressed("move_right"):
#		dir.x = camera.get_center_ray_normal().z
#		dir.z = camera.get_center_ray_normal().x
		pass
	
	move_and_slide(dir * speed, Vector3(0, 1, 0))