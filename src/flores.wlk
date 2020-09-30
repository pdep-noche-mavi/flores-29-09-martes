class Flor{
	const precioBase
	var edad
	
	method precio() = precioBase * edad
	
	method envejecer(){
		edad += 1
	}
	
	method estaDeModa() = self.precio() > 150
	method esLinda() = false
	
}

class Orquidea inherits Flor{
	const origen
	
	override method esLinda() = origen != "Argentina"
	
	override method estaDeModa() = origen == "China"
	

}

class Jazmin inherits Flor{
	
	
	override method esLinda() = true
	
	
}

class Tulipan inherits Flor{
	const color
	override method esLinda() = color == "Rojo"
	
	override method estaDeModa() = super() and self.esLinda()
	
}


//WKO
object jacinta inherits Flor(edad=68,precioBase=100){
	override method esLinda() = edad.even()
}

class Suculenta{
	var diametro
	var altura
	const valorMaceta
	
	method precio() = diametro*altura + valorMaceta
	method esLinda() = valorMaceta > 100
}



object rayitoDeSol{
	 const plantas = #{}
	 
	 method agregarFlor(flor){
	 	plantas.add(flor)
	 }
	 
	 method floresLindas(){
	 	return plantas.filter({unaFlor => unaFlor.esLinda()})
	 }
	 
	 method pasarUnMes(){
	 	plantas.forEach({unaFlor => unaFlor.envejecer()})
	 }
	 
}



/**/ 


//METHOD LOOKUP