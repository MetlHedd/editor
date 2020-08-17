extends Node

func name() -> String:
	return "String"

func description() -> String:
	return ""

func type() -> int:
	return AddonManager.VSTypes.VARIABLE

func style() -> String:
	return "Blue"

func variable_type_id() -> int:
	return -1

func variable_can_connect_with() -> Array:
	return []

func variable_default_value() -> String:
	return "Null"

func connection_color() -> Color:
	return Color.red

func edit_scene_path() -> String:
	return "res://APIs/Core/Scenes/StringEditScene.tscn"

func edit_scene_open(edit_scene, current_variable_value : String) -> void:
	edit_scene.get_node("Items/StringEditScene/StringInput").text = current_variable_value

func edit_scene_confirm(edit_scene) -> String:
	var new_string : String = edit_scene.get_node("Items/StringEditScene/StringInput").text

	return new_string

func generate_code(variable_name : String, current_variable_value : String) -> String:
	return "var %s : String = \"%s\"" % [variable_name, current_variable_value]