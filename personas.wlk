import objetos.*


/*#################################*/
/*PERSONAS*/
/*#################################*/

object rosa {
  
  method leGusta(unObjeto) {
    return unObjeto.peso() < 2000
  }
}

object estefania {
  
  method leGusta(unObjeto) {
    return unObjeto.color().esFuerte()
  }
}

object luisa {
  
  method leGusta(unObjeto) {
    return unObjeto.material().brilla()
  }
}

object juan {
  
  method leGusta(unObjeto) {
    return (not(unObjeto.color().esFuerte()) or (unObjeto.peso().between(1200, 1800)))
    /*return(  !(unObjeto.color().esFuerte()) || ( unObjeto.peso().between(1200,1800)))*/
  }
}