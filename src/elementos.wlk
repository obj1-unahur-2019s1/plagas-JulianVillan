class Hogar {
	var property mugre
	var property confort
	
	method esBueno() = ((confort / 2) >= mugre )
}

class Huerta{
	var property capacidadProduccion
	//const nivelProd = 50
	method esBueno() = capacidadProduccion >= reguladorHuerta.nivelMinimo()  
	
}

object reguladorHuerta { 
	var property nivelMinimo
}

class Mascota{
	var property salud
	
	method esBueno() = salud > 250
	
}

class Barrios{
	var property elementos = []
	
	//method esCopado(){
	//	return (elementos.filter{ e => e.esBueno() }.size() > 
	//			elementos.filter{ e => not e.esBueno() }.size()
	
	method elementosBuenos() = elementos.count({e => e.esBueno()})
	method elementosMalos() = elementos.count({e => not e.esBueno()})
	method esCopado() =  self.elementosBuenos() > self.elementosMalos()	
}