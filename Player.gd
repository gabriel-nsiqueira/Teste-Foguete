extends RigidBody2D

var thrust = Vector2(0, 0)
var torque = 200

func _integrate_forces(state):
	var rotation_dir = 0
	if Input.is_action_pressed("ui_right"):
		rotation_dir += 1
	if Input.is_action_pressed("ui_left"):
		rotation_dir -= 1
	if Input.is_action_pressed("ui_up"):
		applied_force = Vector2(rotation_dir * torque, -350)
	else:
		applied_force = Vector2(0, 0)
	applied_torque = rotation_dir * torque