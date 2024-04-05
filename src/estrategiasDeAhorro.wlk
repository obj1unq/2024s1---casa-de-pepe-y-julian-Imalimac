import cuentasBancarias.*
import casa.*

object minimoEIndispensable {
	var property calidadDeViveres 
	
	method aplicarEstrategia(casaDondeAplicar){
		if (not casaDondeAplicar.tieneViveresSuficientes()){
			casaDondeAplicar.comprarViveres(40-casaDondeAplicar.viveres(), calidadDeViveres)
		}
	}
}

object full {
	const calidadDeViveres = 5
	
	method aplicarEstrategia(casaDondeAplicar){
		self.comprarViveresSegunEstado(casaDondeAplicar)
		self.hacerReparacionesSiSePuede(casaDondeAplicar)
		}
	
	
	method comprarViveresSegunEstado(casaDondeAplicar){
		if (casaDondeAplicar.estaEnOrden()){
			casaDondeAplicar.comprarViveres(100-casaDondeAplicar.viveres(), calidadDeViveres)	
		} else {
			casaDondeAplicar.comprarViveres(40, calidadDeViveres)
		}
	}
	
	method hacerReparacionesSiSePuede(casaDondeAplicar){
		if (casaDondeAplicar.cuenta().tieneSaldoSuficiente(casaDondeAplicar.costoDeReparaciones()+1000)){
			casaDondeAplicar.repararPorValor(casaDondeAplicar.costoDeReparaciones())
		}
	} 
}