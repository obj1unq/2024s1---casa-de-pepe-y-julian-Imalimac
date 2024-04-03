import estrategiasDeAhorro.*
import cuentasBancarias.*

object casaDePepeYJulian {
	var viveres = 50
	var costoReparaciones = 0
	
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
	
	method comprarViveres(porcentajeAComprar){
		viveres = viveres + porcentajeAComprar
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
	
}
