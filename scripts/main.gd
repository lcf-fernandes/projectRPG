extends Node2D
## Script principal do jogo.
## Atrelado à cena res://scenes/main.tscn (nó raiz "Main").

@onready var title_label: Label = $CanvasLayer/CenterContainer/VBoxContainer/Title
@onready var subtitle_label: Label = $CanvasLayer/CenterContainer/VBoxContainer/Subtitle
@onready var info_label: Label = $CanvasLayer/CenterContainer/VBoxContainer/InfoLabel
@onready var action_button: Button = $CanvasLayer/CenterContainer/VBoxContainer/ActionButton

var click_count: int = 0

func _ready() -> void:
	# Conexão de sinal via código (compatível com Godot 4).
	action_button.pressed.connect(_on_action_button_pressed)
	_update_info_label()
	print("Project RPG iniciado com sucesso.")

func _process(_delta: float) -> void:
	# Exemplo de movimentação simples para teste de input (setas/WASD/controle).
	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction != Vector2.ZERO:
		# Apenas demonstra que o input está funcionando.
		info_label.text = "Direção: %s" % direction.round()

func _on_action_button_pressed() -> void:
	click_count += 1
	_update_info_label()
	# Feedback visual simples.
	var tween := create_tween()
	tween.tween_property(title_label, "scale", Vector2(1.05, 1.05), 0.08)
	tween.tween_property(title_label, "scale", Vector2.ONE, 0.08)

func _update_info_label() -> void:
	if click_count == 0:
		info_label.text = "Pressione o botão ou use as setas/WASD."
	else:
		info_label.text = "Cliques: %d" % click_count
