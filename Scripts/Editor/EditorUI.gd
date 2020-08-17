extends Control

# Variables, consts and enums

# View Properties

# Avalaible editor gui views
enum UIViews {GAME, SCRIPT}
# Currently active view
var current_view_active : int = UIViews.GAME
# Views buttons and view scenes
var views : Array = []

# Menu properties
# Avaliable menu buttons
enum MenuButtons {FILE, PROJECT, ADDONS, ABOUT}
# Array with the scenes of menu buttons
var menu_buttons : Array = []

# Popups

# ??
onready var variable_edit_popup = $VariableEdit

# Signals

# Functions

# Add a new view
func register_view_button(button_scene, view_scene) -> void:
	views.append([button_scene, view_scene])

	button_scene.connect("toggled", self, "view_button_toggled", [views.size() - 1])

# Update current editor view
func update_editor_view() -> void:
	for i in range(views.size()):
		views[i][1].visible = i == current_view_active
		views[i][0].pressed = i == current_view_active


# Function to be used when a view button is toggled by the user
func view_button_toggled(button_pressed : bool, view_id : int) -> void:
	if button_pressed:
		current_view_active = view_id
		
		update_editor_view()

func register_menu_button(button_scene, menu_items : Array, _menu_item_pressed_function_name : String) -> void:
	menu_buttons.append(button_scene)

	for item in menu_items:
		button_scene.get_popup().add_item(item)

# Virtuals

func _ready() -> void:
	# Add the views
	register_view_button($Menu/CenterContainer/Container/GameButton, $GameEditor)
	register_view_button($Menu/CenterContainer/Container/ScriptButton, $ScriptEditor)

	# Add the menu buttons and they items
	register_menu_button($Menu/Left/FileButton, [], "")
	register_menu_button($Menu/Left/SceneButton, [], "")
	register_menu_button($Menu/Left/AddonsButton, ["Instal new addon", "Manage installed addons"], "")
	register_menu_button($Menu/Left/AboutButton, [], "")

	#
	update_editor_view()

	#
	#$VariableEdit.get_node("Popup").show_new_variable_edit("Test", "res://APIs/Core/Scenes/StringEditScene.tscn")
