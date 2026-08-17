@tool
extends EditorPlugin
class_name FoxyJumpscarePlugin

var editor : EditorInterface
var interface

var plugin_active = false

func _enable_plugin() -> void:
	pass

func _disable_plugin() -> void:
	pass

func _enter_tree() -> void:
	plugin_active = true
	
	interface = preload("uid://bbq0c6riomaf3").instantiate()
	var editor_root = EditorInterface.get_base_control()
	editor_root.add_child(interface)
func _exit_tree() -> void:
	plugin_active = false
	
	interface.free()
