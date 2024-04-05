import estrategiasDeAhorro.*
import cuentasBancarias.*

object casaDePepeYJulian {
	var viveres = 50
	var costoReparaciones = 0
	var cuenta = cuentaCorriente
	var estrategiaDeAhorro = minimoEIndispensable
	
	method estaEnOrden(){
		return self.tieneViveresSuficientes()&&not self.tieneQueHacerReparaciones()
	}
	
	method romperPorValor(valorDelObjetoRoto){
		costoReparaciones=costoReparaciones+valorDelObjetoRoto
	}
	
	method tieneViveresSuficientes(){
		return viveres >= 40
	}
	
	method tieneQueHacerReparaciones(){
		return costoReparaciones > 0
	}
	
	method comprarViveres(porcentajeAComprar, calidadDeViveres){
		viveres = viveres + porcentajeAComprar
		cuenta.extraer(porcentajeAComprar*calidadDeViveres)
	}
	
	method consumirViveres(porcentajeAConsumir){
		viveres = viveres - porcentajeAConsumir
	}
	
	method repararPorValor(valorAReparar){
		costoReparaciones=costoReparaciones-valorAReparar
	}
	
	method viveres(){
		return viveres
	}
	
	method cuenta(){
		return cuenta
	}
	
	method costoDeReparaciones(){
		return costoReparaciones
	}
	
	method estrategiaDeAhorro(){
		return estrategiaDeAhorro
	}
	
	method establecerCuenta(tipoDeCuenta){
		cuenta = tipoDeCuenta
	}
	
	method establecerEstrategiaDeAhorro(estrategia){
		estrategiaDeAhorro = estrategia
	}

	method aplicarEstrategiaDeAhorro(){
		estrategiaDeAhorro.aplicarEstrategia(self)
	}
}
