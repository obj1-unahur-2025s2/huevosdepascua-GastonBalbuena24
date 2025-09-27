import chicos.*
import huevosDePascua.*


object caceria {
    const huevosEncontrados = []
    const huevosNoEncontrados = []

    method inicializarJuego() {
        flor.petalos(7)
        blisterHuevitos.huevitos(14)
        matrioshka.decoracion(flor)
        matrioshka.huevoEnSuInterior(huevoMixto)
        huevosNoEncontrados.addAll([matrioshka, huevoRepostero, conejo, huevoMixto])
    }

    method cantidadaPorEncontrar() = huevosNoEncontrados.size()
    method cuantosConChocolateBlanco() = huevosNoEncontrados.count({h => h.esChocolateBlanco()}) 
    method aunNoFueEncontrado(unHuevo) = huevosNoEncontrados.contains(unHuevo) 
    method encontrarUnHuevoPor(unChico, unHuevo) {
        unChico.comer(unHuevo)
        huevosNoEncontrados.remove(unHuevo)
        huevosEncontrados.add(unHuevo)
    }    

    method encontrarPrimerHuevo(unChico) {
        self.encontrarUnHuevoPor(unChico, huevosNoEncontrados.first())
    } 

    method encontrarLosRestantes(unChico) {
        huevosNoEncontrados.forEach({h => self.encontrarUnHuevoPor(unChico, h)})
    } 

    method huevosNoEncontradosBlancos() = huevosNoEncontrados.filter({h => h.esChocolateBlanco()})

    method noEncontradosDeMayorCalorias() = huevosNoEncontrados.max({h => h.calorias()}) 
  

}

