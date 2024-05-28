extends RigidBody


func _ready():
	$tema.play() #quando o jogo começa, a musica tambem começa
	
func _physics_process(delta): #parte fisica do corpo
	if Input.is_action_pressed("voa"): #quando presionar o botão, vai vazer a ação de voar
		$batendoasa.play() #vai bater as asas
		linear_velocity.y = 300*delta 
