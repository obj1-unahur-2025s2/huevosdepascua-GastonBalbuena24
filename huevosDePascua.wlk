object huevoRepostero {
    method esChocolateBlanco() = true
    method esChocolateAmargo() = false 
    method calorias() = 750 
}

object huevoMixto {
    method esChocolateBlanco() = true
    method esChocolateAmargo() = false

    method caloriasChocolateBlanco() = 400
    method caloriasChocolateConLeche() = 500 
    method calorias() = self.caloriasChocolateBlanco() + self.caloriasChocolateConLeche()
}

object conejo {
    method esChocolateBlanco() = false
    method esChocolateAmargo() = true

    var property peso = 10
    method calorias() = peso * 10 

}

object blisterHuevitos {
    method esChocolateBlanco() = false
    method esChocolateAmargo() = false

    var property huevitos = 3
    method calorias() = huevitos * 100 + huevitos.div(5) * 150
    method tieneChocolateBlanco() = if(huevitos >= 5) self.esChocolateBlanco()

}

object matrioshka {
    
    method esChocolateAmargo() = true

    var property huevoEnSuInterior = huevoMixto
    var property decoracion = flor
    method calorias() = 3000 + huevoEnSuInterior.calorias() + decoracion.caloriasDeco() 
    
    method esChocolateBlanco() = huevoEnSuInterior.esChocolateBlanco() 
}

object flor {
    var property petalos = 5
    method caloriasDeco() = petalos * 100 
}

object arbol {
    method caloriasDeco() = 150
}
