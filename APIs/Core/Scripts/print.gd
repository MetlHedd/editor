extends Node

func name() -> String:
	return "Print"

func description() -> String:
	return "Prints something on game terminal"

func type() -> int:
	return AddonManager.VSTypes.FUNCTION

func style() -> String:
	return "Blue"

func has_input_sequence() -> bool:
	return true

func has_output_sequence() -> bool:
	return true

func input_parameters() -> Array:
	return []

func output_parameters() -> Array:
	return []

func step(_inputs : Array) -> Array:
	return []