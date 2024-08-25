extends CharacterBody2D

var _state_machine
var npc_in_range = false
var npc


@export_category("Variables")
@export var _move_speed: float = 96.0
@export var _sprint_speed: float = 192.0

@export var _acceleration: float = 0.3
@export var _deceleration: float = 0.3

@export_category("Objects")
@export var _animation_tree: AnimationTree = null

var atividadeResource = preload("res://resources/mini-caderno-resource/new_resource.tres")

var active_directions: Array = []

enum Direction {
	RIGHT,
	LEFT,
	UP,
	DOWN
}

func _ready() -> void:
	_state_machine = _animation_tree["parameters/playback"]
	_animation_tree["parameters/Idle/blend_position"] = Vector2(0, 1)

func _physics_process(_delta: float) -> void:
	_animate()
	_move()
	move_and_slide()
	global_position = global_position.clamp(Vector2(0,90), get_viewport_rect().size)

func _input(event):
	if event.is_action_pressed("key_right"):
		_add_direction(Direction.RIGHT)
	elif event.is_action_released("key_right"):
		_remove_direction(Direction.RIGHT)

	if event.is_action_pressed("key_left"):
		_add_direction(Direction.LEFT)
	elif event.is_action_released("key_left"):
		_remove_direction(Direction.LEFT)

	if event.is_action_pressed("key_up"):
		_add_direction(Direction.UP)
	elif event.is_action_released("key_up"):
		_remove_direction(Direction.UP)

	if event.is_action_pressed("key_down"):
		_add_direction(Direction.DOWN)
	elif event.is_action_released("key_down"):
		_remove_direction(Direction.DOWN)

func _add_direction(direction: int) -> void:
	if direction in active_directions:
		active_directions.erase(direction)
	active_directions.append(direction)

func _remove_direction(direction: int) -> void:
	if direction in active_directions:
		active_directions.erase(direction)

func _get_latest_direction() -> Vector2:
	var _direction: Vector2 = Vector2()
	for direction in active_directions:
		match direction:
			Direction.RIGHT:
				_direction.x = 1
			Direction.LEFT:
				_direction.x = -1
			Direction.UP:
				_direction.y = -1
			Direction.DOWN:
				_direction.y = 1
	return _direction

func _move() -> void:
	var keyboard_direction: Vector2 = _get_latest_direction()

	var joystick_direction: Vector2 = Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	)

	var _direction: Vector2 = joystick_direction if joystick_direction != Vector2.ZERO else keyboard_direction

	var current_speed = _move_speed

	if Input.is_action_pressed("ui_sprint"):
		current_speed = _sprint_speed

	if _direction != Vector2.ZERO:
		_animation_tree["parameters/Walk/blend_position"] = _direction
		_animation_tree["parameters/Idle/blend_position"] = _direction

		velocity.x = lerp(velocity.x, _direction.normalized().x * current_speed, _acceleration)
		velocity.y = lerp(velocity.y, _direction.normalized().y * current_speed, _acceleration)
	else:
		var prev_direction: Vector2 = _animation_tree["parameters/Idle/blend_position"]
		var angle = atan2(prev_direction.y, prev_direction.x)

		var direction: Vector2
		if angle > -PI * 0.75 and angle <= -PI * 0.25:
			direction = Vector2.DOWN
		elif angle > -PI * 0.25 and angle <= PI * 0.25:
			direction = Vector2.RIGHT
		elif angle > PI * 0.25 and angle <= PI * 0.75:
			direction = Vector2.UP
		else:
			direction = Vector2.LEFT

		_animation_tree["parameters/Walk/blend_position"] = direction
		_animation_tree["parameters/Idle/blend_position"] = direction

	if not Input.is_action_pressed("ui_sprint"):
		velocity.x = lerp(velocity.x, _direction.normalized().x * _move_speed, _deceleration)
		velocity.y = lerp(velocity.y, _direction.normalized().y * _move_speed, _deceleration)


func _animate() -> void:
	
	if velocity.length() > 1:
		_state_machine.travel("Walk")
		return
	
	_state_machine.travel("Idle")
	
func _on_detection_area_body_exited(body):
	if body.has_method("npc"):
		npc_in_range = false

func _on_minimapabutton_pressed():
	get_tree().change_scene_to_file("res://levels/Mini-mapa/mini_mapa_aberto.tscn")
	
func _on_minicadernocasacrys_pressed():
	get_tree().change_scene_to_file("res://levels/mini-caderno_aberto/mini_cadernoAberto.tscn")
