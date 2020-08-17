extends Node

# Registered addons: [key] = {"name": String, "author": String, "version": String, "visual_script_nodes": Array}
var registered_addons : Array = []

# Visual Script Nodes types
enum VSTypes {VARIABLE, FUNCTION, GAME_SIGNAL, CUSTOM}

var registered_variables_types : Dictionary = {}
#	"Number": {
#		"can_connect_with": [],
#		"connection_color": Color.red
#	},
#	"String": {
#		"can_connect_with": [],
#		"connection_color": Color.red
#	}