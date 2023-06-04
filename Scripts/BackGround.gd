extends Sprite

export var speed=300
var obstacles=Array()
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	
	for c in get_children():
		if(c.is_in_group("Obstacles")):
			obstacles.append(c)
	RandomizeObstacles()


func _process(delta):
	translate(Vector2(-speed*delta,0))
	if(position.x<=-2047):
		position.x=2040
		RandomizeObstacles()
#	pass


func RandomizeArray(var arr):
	for i in range(0,obstacles.size()):
		var r=rand_range(0,obstacles.size())
		var temp=arr[i]
		arr[i]=arr[r]
		arr[r]=temp

func RandomizeObstacles():
	RandomizeArray(obstacles)
	for o in obstacles:
		var r=rand_range(370,700)
		o.position.y=r
	
