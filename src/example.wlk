object galvan {
	var dineroDeDueldo = 150000
	var dineroActual = 0
	var deuda = 0
	
	method deuda() = deuda
	method dineroActual() = dineroActual
	
	method gastar(dineroGastado){
		deuda += if(dineroGastado > dineroActual) dineroGastado-dineroActual else 0
		dineroActual = 0.max(dineroActual-dineroGastado)
	}
	
	method sueldo() {
		dineroActual += if(deuda < dineroDeDueldo) dineroDeDueldo - deuda else 0
		deuda = 0.max(deuda-dineroDeDueldo)
		return dineroDeDueldo
	} 
	
	method dineroDeDueldo(nuevoSueldo) { dineroDeDueldo = nuevoSueldo }
}

object baigorria {
	var cantEmpanadas = 0
	var totalCobrado = 0
	
	method cantEmpanadas(numeroEmpanadas){
		cantEmpanadas = numeroEmpanadas
	}
	method totalCobrado() = totalCobrado
	method sueldo() {
		var cobrado = cantEmpanadas*150
		totalCobrado = cobrado
		return cobrado
	} 
	method deuda() = {}
	method dineroActual() = {}
	
	method gastar(dineroGastado){}
}

object gimenez {
	var fondoParaSueldos = 3000000
	
	method pagarA(empleado){
		fondoParaSueldos -= empleado.sueldo()
	}
}