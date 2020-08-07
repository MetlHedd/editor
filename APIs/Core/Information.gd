extends Node

# The name of the api
func api_name() -> String:
	return "Core"

# Currently version the api
func api_version() -> String:
	return "0.1.0"

# Informations abou the author
func api_author() -> String:
	return "Breno Sousa <breno.alves@usp.br>"

# Visual script nodes to register
func visual_script_nodes() -> Array:
	return []