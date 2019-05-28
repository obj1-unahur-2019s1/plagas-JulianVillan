class Hogar {
	var property mugre
	var property confort
	
	method esBueno() = ((confort / 2) >= mugre )
	method recibirAtaque(plaga){
		mugre = plaga.nivelDeDanio()
	}
}

class Huerta{
	var property capacidadProduccion
	//const nivelProd = 50
	method esBueno() = capacidadProduccion >= reguladorHuerta.nivelMinimo()  
	method recibirAtaque(plaga){
		capacidadProduccion -= (plaga.nivelDeDanio()*0.1)
		if (plaga.transmiteEnfermedades()){ capacidadProduccion -= 10}
	}
}

object reguladorHuerta { 
	var property nivelMinimo = 20
}

class Mascota{
	var property salud
	
	method esBueno() = salud > 250
	method recibirAtaque(plaga){
		if (plaga.transmiteEnfermedades()){ salud = plaga.nivelDeDanio()}
	}
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