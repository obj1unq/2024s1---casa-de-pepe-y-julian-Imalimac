import estrategiasDeAhorro.*
import casa.*

object cuentaCorriente {

	var saldo = 0

	method depositar(saldoADepositar) {
		saldo = saldo + saldoADepositar
	}

	method extraer(saldoAExtraer) {
		saldo = saldo - saldoAExtraer
	}

	method saldo() {
		return saldo
	}
	
	method tieneSaldoSuficiente(gastoACubrir){
		return saldo >= gastoACubrir
	}

}

object cuentaConGastos {

	var saldo = 0
	var property costoPorOperacion = 20

	method depositar(saldoADepositar) {
		saldo = saldo + saldoADepositar - costoPorOperacion
	}

	method extraer(saldoAExtraer) {
		saldo = saldo - saldoAExtraer
	}

	method saldo() {
		return saldo
	}
	
	method tieneSaldoSuficiente(gastoACubrir){
		return saldo >= gastoACubrir
	}

}

object cuentaCombinada {

	var property cuentaPrimaria 
	var property cuentaSecundaria

	method depositar(saldoADepositar) {
		cuentaPrimaria.depositar(saldoADepositar)
	}

	method extraer(saldoAExtraer) {
		if (cuentaPrimaria.saldo() > saldoAExtraer)
		 	{cuentaPrimaria.extraer(saldoAExtraer)}
		else cuentaSecundaria.extraer(saldoAExtraer)
	}

	method saldo() {
		return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
	}
	
	method tieneSaldoSuficiente(gastoACubrir){
		return self.saldo() >= gastoACubrir
	}

}

