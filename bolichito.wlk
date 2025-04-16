import personas.*
import objetos.*

object bolichito {
  var objetoEnVidriera = null
  var objetoEnMostrador = null

/*Getter/Setter objetoEnVidriera */
    method dameObjetoEnVidriera() { return objetoEnVidriera }
    method cambiarObjetoEnVidriera(nuevoObjeto) { objetoEnVidriera = nuevoObjeto }

/*Getter/Setter objetoEnMostrador */
    method dameObjetoEnMostrador() { return objetoEnMostrador }
    method cambiarObjetoEnMostrador(nuevoObjeto) { objetoEnMostrador = nuevoObjeto }

    method esBrillante() { return objetoEnMostrador.material().brilla() and objetoEnVidriera.material().brilla() }

    method esMonocromatico() { return objetoEnMostrador.color() == objetoEnVidriera.color() }

    method estaEquilibrado() { return objetoEnMostrador.peso() > objetoEnVidriera.peso() }

    method tenesArticuloDeColor(unColor) { 
      return objetoEnMostrador.color() == unColor or objetoEnVidriera.color() == unColor
    }

    method puedeMejorar() { return not self.estaEquilibrado() or not self.esMonocromatico() }

    method puedeOfrecerleAlgoA(unaPersona) { 
        return unaPersona.leGusta(objetoEnMostrador) or unaPersona.leGusta(objetoEnVidriera)
    }
}