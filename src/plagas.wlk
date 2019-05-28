class Plagas {
	var property poblacion
	method transmiteEnfermedad() = poblacion >= 10
	method atacar(elemento){ 
		poblacion *= 0.1  
		elemento.recibirAtaque(self)
	}
	method nivelDanio() = poblacion
}

class PulgasYGarrapatas inherits Plagas {
	method nivelDeDanio(){ poblacion *= 2}
}
class Cucarachas inherits Plagas{
	var property pesoPromedio 
	
	override method nivelDanio() = super()/2
	override method transmiteEnfermedad() = super() && pesoPromedio >= 10   
	override method atacar(elemento){ 
		super(elemento) ; pesoPromedio += 2
		elemento.recibirAtaque(self)	
	}	
}

class Pulgas inherits PulgasYGarrapatas { 
}

class Garrapatas inherits Pulgas{
	override method atacar(elemento){
		poblacion *= 0.2
		elemento.recibirAtaque(self)
	}
}

class Mosquitos inherits Plagas {
	override method transmiteEnfermedad() = super() && poblacion % 3 == 0	
}

