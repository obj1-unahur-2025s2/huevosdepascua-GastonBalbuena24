import huevosDePascua.*

object ana {
    const huevosComidos = []

    method comer(unHuevo) {
        huevosComidos.add(unHuevo)
    }
    method estaEnfermo() {
        return
        self.consumioMasDe5000() || self.hayAlgunoDeChocoBlanco()
    }

    method consumioMasDe5000() = huevosComidos.sum({h => h.calorias()}) > 5000
    method hayAlgunoDeChocoBlanco() = huevosComidos.any({h => h.esChocolateBlanco()})   
}

object jose {
    var ultimoHuevoComido = huevoMixto
    method comer(unHuevo) {
        ultimoHuevoComido = unHuevo
    }
    method estaEnfermo() = ultimoHuevoComido.esChocolateAmargo() 
}

object tito {
    method comer(unHuevo) {}
    method estaEnfermo() = false  
  
}