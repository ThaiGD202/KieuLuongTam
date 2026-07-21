extends CanvasLayer


func _ready() -> void:
	pass
func _process(delta: float) -> void:
	if OS.get_name() == "iOS" and OS.get_name() == "Android":
		show()
	else:
		hide()
