extends AnimatedSprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export var force=200

func _ready():
	pass
	

func _process(delta):
	#if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
		#get_parent().add_force(Vector2(0,0),Vector2(0,-force))
	pass	
	
	
	



func _on_Button_pressed():
	get_parent().set_axis_velocity(Vector2(0,-force))
	get_node("Flyaudio").play(0)
	
		
	#print("Pressed") 
	#pass


func _on_RigidBody2D_body_entered(body):
	play("Hit")
	get_node("Deathaudio").play(0)
	print("Dead")
	get_tree().paused=true
