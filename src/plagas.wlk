class Plagas {
	var property poblacion
	method transmiteEnfermedad() = poblacion >= 10
	method atacar(elemento){ poblacion += poblacion * 0.1 }
	method nivelDanio() = poblacion
}

class Cucarachas inherits Plagas{
	var property pesoPromedio 
	
	override method nivelDanio() = super()/2
	override method transmiteEnfermedad() = super() and pesoPromedio >= 10   
	override method atacar(elemento){ 
		super(elemento) ; pesoPromedio *= 2	
	}	
}

class Pulgas inherits Plagas { 
	override method nivelDanio() = super()*2
}

class Garrapatas inherits Pulgas{
	override method atacar(elemento){ poblacion += poblacion * 0.2 }
}

class Mosquitos inherits Plagas {
	override method transmiteEnfermedad() = super() and poblacion % 3 == 0	
}

