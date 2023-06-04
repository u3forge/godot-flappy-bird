extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var bird
var score

func _ready():
	bird=get_tree().get_root().get_node("Root").get_node("RigidBody2D")
	score=get_tree().get_root().get_node("Root").get_node("text")
	score.text="Score "+String(GameManager.scorenum)
	#print(get_tree().get_root().get_node("Root").get_node("RigidBody2D"))

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass



	


func _on_Area2D_body_entered(body):
	if(body==bird):
		GameManager.scorenum=GameManager.scorenum+1
		score.text="Score "+String(GameManager.scorenum)
		print(GameManager.scorenum)
	print(body)
