extends Spatial


func _ready(): 
	randomize() # criar os canos de forma random 
	translate(Vector3(0, rand_range(-3,0), 0)) # altenando canos em um faixa na vertical num plano carteziano

func _physics_process(delta):
	translate(Vector3(0, 0, 4*delta))

func colidiu(body):
	if body.nome == "Player":
		get_tree().reload_current_scene()

func _on_deletec_timeout():
	queue_free()
