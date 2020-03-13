extends KinematicBody

var MOVE_SPEED = 7
const JUMP_FORCE = 11
const GRAVITY = 0.98
const MAX_FALL_SPEED = 20
var y_velo = 0
const H_LOOK_SENS = 0.6
const V_LOOK_SENS = 0.4
var velo_pista = 7

var esquerda
var centro =  true
var direita
var Type_controls = 1
var jump_active = true
var animation
var animate_current
var block_jump = false
var is_moving = true

func _ready():
	animation = get_node("AnimationPlayer")
	
func _input(event):
	pass
	
func block_moves_cam_down(type):
	block_jump = type
	if type == true:
		animation.play("Jump")
	elif type == false:
		animation.play("jump_fall")
		
	
func change_speed(speed):
	velo_pista = velo_pista * speed

func invert_controls(type):
	Type_controls = type
	if jump_active:
		jump_active = false
	else:
		jump_active = true
	
	if direita:
		direita = false
		esquerda = true
		
	elif esquerda:
		esquerda = false
		direita = true
		
	
func _physics_process(delta):
	animate_current = animation.current_animation
	
	var roll = false
	var just_jumped = false
	var grounded = is_on_floor()

	if animate_current == "anm_00076004":
		roll = true
	else:
		roll = false
		
	var move_vec = Vector3()
	if true or Input.is_action_pressed("frente"):
		#move_vec.x -= 1
		is_moving = true
		
	if !block_jump and Input.is_action_just_pressed("traz"):
		roll = true
		#is_moving = true
		animation.play("anm_00076004")
		
	if Type_controls == 1 and Input.is_action_pressed("direita"):
		move_vec.z -= 1
		#is_moving = true
		centro = true
		esquerda = false
		direita = false
		
	if Type_controls == 1 and Input.is_action_pressed("esquerda"):
		move_vec.z += 1
		#is_moving = true
		centro = true
		esquerda = false
		direita = false
		
	if Type_controls == 2 and Input.is_action_pressed("direita"):
		move_vec.z += 1
		#is_moving = true
		centro = true
		esquerda = false
		direita = false
		
	if Type_controls == 2 and Input.is_action_pressed("esquerda"):
		move_vec.z -= 1
		#is_moving = true
		centro = true
		esquerda = false
		direita = false

	
	if !block_jump and !roll and velo_pista == 7 and is_moving and is_on_floor() and animate_current != "jump_fall":
		animation.play("anm_02076002")
	
	if !block_jump and !roll and velo_pista != 7 and is_moving and is_on_floor() and animate_current != "jump_fall":
		animation.play("anm_02076008")
	
	if !block_jump and jump_active and grounded and Input.is_action_just_pressed("pulo"):
		just_jumped = true
		y_velo = JUMP_FORCE
		animation.play("anm_00076004")
	
	move_vec *= MOVE_SPEED
	move_vec.z
	move_vec.y = y_velo
	move_and_slide(move_vec, Vector3(0, 1, 0))
	y_velo -= GRAVITY

	if grounded and y_velo <= 0:
		y_velo = -0.1
	if y_velo < -MAX_FALL_SPEED:
		y_velo = -MAX_FALL_SPEED
