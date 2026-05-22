import victoriatest.*

object victoria{

  var disiplina = tenis
  var estatura = 0
  var edad = 20
  var cantidadEntrenadores = 0

  method edad() = edad

  method altura() = estatura

  method disiplinaPracticada()  = disiplina

  method cambiarDisiplina(unaDisiplina) {
    disiplina = unaDisiplina
  }
  
  method cumplirAno() {
    edad = edad + 1
  }

  method cambiarCantidadEntrenadores(unaCantidad) {
    cantidadEntrenadores = unaCantidad
  }

  method cantidadDeEntrenadores() = 2

  method pagoPorEntrenador() = 100

  method cambiarEstatura(unaEstatura) {
    estatura = unaEstatura
  }

  method presupuestoTotal() = self.presupuestoPropio() + disiplina.presupuestoBaseDeLaDisiplina()

  method presupuestoPropio() = self.cantidadDeEntrenadores() * co.pagoPorEntrenador() + disiplina.elementoIndispensable().costoElemento()

}




object co {
  method pagoPorEntrenador() = 100

}

object tenis{
  var inchas = 5

  method presupuestoBaseDeLaDisiplina() = 200 + inchas * 3

  method elementoIndispensable() = raqueta

  method cantidadDeInchas() = inchas

  method aumentarInchas(unacantidadInchas) {
    inchas = inchas + unacantidadInchas
  }

}

object judo{

  var medallasGanadas = 3
  method presupuestoBaseDeLaDisiplina() = 160 * medallasGanadas

  method cantidadDeMedallas() = medallasGanadas

  method elementoIndispensable() = trajeJudo

  method sumarMedalla() {
    medallasGanadas = medallasGanadas + 1
  }

}

object raqueta {
  method costoElemento() = (victoria.edad()* 100).min(3000)
}

object trajeJudo {
  method costoElemento() = 50 * victoria.altura()
}

