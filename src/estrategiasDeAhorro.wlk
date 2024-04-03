import cuentasBancarias.*
import casa.*

object minimoEIndispensable {
	var property calidadDeViveres 
	
	method aplicarEstrategia(casaDondeAplicar){
		if not casaDondeAplicar.tieneViveresSuficientes(){
			casaDondeAplicar.comprarViveres(40-casaDondeAplicar.viveres())
		}
		
	}
	
	
}

object full{
	const calidadDeViveres = 5
	method aplicarEstrategia(casaDondeAPlicar){
		
		
	}
	
}