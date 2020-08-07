extends WindowDialog

func show_new_variable_edit(popup_title : String, items_scene_path : String) -> void:
	# Add the edit scene to the popup
	var items_scene = load(items_scene_path).instance()

	$Items.add_child(items_scene)

	# Change the popup title
	$".".window_title = popup_title

	# ??

	# Show the popup
	$".".popup_centered()

