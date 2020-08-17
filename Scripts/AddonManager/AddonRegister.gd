extends Node

func register_addon(name : String, author : String, version : String) -> void:
	AddonManager.registered_addons.append({"name": name, "author": author, "version": version, "functions": []})

func register_variable() -> void:
	pass