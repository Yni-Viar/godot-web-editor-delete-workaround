@tool
extends EditorPlugin

var attempt: int = 0

func _enter_tree() -> void:
	if OS.get_name() == "Web":
		if !DirAccess.dir_exists_absolute("res://_trash/"):
			DirAccess.make_dir_absolute("res://_trash/")
		add_tool_menu_item("Clean trash", clean_trash)
	pass


func _exit_tree() -> void:
	if OS.get_name() == "Web":
		remove_tool_menu_item("Clean trash")
	pass

## Cleans unwanted files
func clean_trash():
	var dir = DirAccess.open("res://_trash/")
	if !DirAccess.dir_exists_absolute("/home/web_user/trash/"):
		DirAccess.make_dir_absolute("/home/web_user/trash/")
	if dir:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			var error = DirAccess.rename_absolute("res://_trash/" + file_name, "/home/web_user/trash/" + file_name)
			attempt += 1
			printerr(error)
			file_name = dir.get_next()
	else:
		print("An error occurred when trying to access the path.")
