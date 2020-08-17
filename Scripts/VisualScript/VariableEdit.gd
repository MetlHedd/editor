extends WindowDialog

func _ready():
	connect("popup_hide", self, "_on_popup_hide")

func show_new_variable_edit(popup_title : String, items_scene_path : String, current_variable_value) -> void:
	# ??
	get_parent().visible = true

	# Add the edit scene to the popup
	var items_scene = load(items_scene_path).instance()

	# Set the initial properties on scene
	items_scene.current_value = current_variable_value

	$Items.add_child(items_scene)

	# Change the popup title
	$".".window_title = popup_title

	# Show the popup
	$".".popup_centered()

func _on_popup_hide():
	get_parent().visible = false
