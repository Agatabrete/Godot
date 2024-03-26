extends Node

# Mängu algseadistus
var vaenlaseElud = 100
var salveSuurus = 5
var skoor = 0
var tabamisprots = 0.0
var laskeArv = 0

func _ready():
	print("Tere tulemast tulistamismängu!")
	print("Vajuta tühikut, et tulistada. Vajuta 'R', et laadida.")

@warning_ignore("unused_parameter")
func _process(delta):
	# Kontrolli, kas mäng on läbi
	if vaenlaseElud <= 0:
		print("Võitsid! Skoor:", skoor, ", Laskeid: ", laskeArv, ", Tabamisprotsent: ", tabamisprots)
		get_tree().quit()

	# Kuva hetkeolukorda
	print("Vaenlase elud:", vaenlaseElud)
	print("Hetke damage:", randi_range(8, 12))
	print("Salves olevate padrunite arv:", salveSuurus)
	print("Tegevus - kas laetakse või lastakse (Space = tulistamine, R = laadimine)")

func _input(event):
	# Käitle tühiku vajutamist
	if event.is_action_pressed("ui_accept"):
		tulista()

	# Käitle 'R' klahvi vajutamist
	if event.is_action_pressed("reload"):
		laadi()

func tulista():
	if salveSuurus > 0:
		salveSuurus -= 1
		laskeArv += 1
		var pihtas = randi() % 2 == 1
		if pihtas:
			vaenlaseElud -= randi_range(8, 12)
			skoor += 1
			@warning_ignore("integer_division")
			tabamisprots = skoor / laskeArv * 100
		else:
			print("Mööda lastud!")

func laadi():
	salveSuurus = 5
	print("Salv on laetud!")
