
var elud = 100



func _ready():
	pass

func _process(_delta):
	if Input.is_action_just_pressed("shoot") && salv>0 && elud>0:
		print("Piu")
		salv-=1
		print("Salves:"+str(salv))
		elud-=dmg
		print("Elud: "+str(elud))
		
	if Input.is_action_just_pressed("reload"):
		salv = 5
		print("Laen...")
	
