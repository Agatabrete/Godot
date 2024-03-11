extends Node
#Agata Brete Jõpiselg
#11.03.2024
#ülesanne3

# Called when the node enters the scene tree for the first time.
func _ready():
	var enemyHealth = 100
	var playerHealth = 100
	while enemyHealth > 0 and playerHealth > 0:
		var playerhit = randi() % 8 + 8
		var enemyhit = randi() % 8 + 8
		print("Life: %d Hit: %d" % [playerHealth, playerhit])
		if playerHealth <= 0:
			break
		print("Life: %d Hit: %d" % [enemyHealth, enemyhit])
		if enemyHealth <= 0:
			break
		enemyHealth -= enemyhit
		playerHealth -= playerhit
	print("you WIN")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
