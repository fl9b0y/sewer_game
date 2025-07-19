extends RigidBody3D
var multiplier : int = 1


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("ui_up"):
		apply_impulse(Vector3.UP*200*delta)
	if Input.is_action_pressed("ui_right"):
		apply_force(Vector3(0,0,15))
	if Input.is_action_pressed("ui_left"):
		apply_force(Vector3(0,0,-15))
	if Input.is_action_just_pressed("ui_down"):
		apply_impulse(Vector3.UP*-200*delta)
		
	if Input.is_action_just_pressed("ui_accept"):
		self.mass = 20
		gravity_scale *=-1
		apply_impulse(Vector3(0,multiplier*1,0))
		multiplier*=-1
		self.mass = 1 
		print(gravity_scale)
		
