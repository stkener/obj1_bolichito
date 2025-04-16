/*#################################*/
/*COLORES*/
/*#################################*/

object rojo {
  method esFuerte() = true
}

object verde {
  method esFuerte() = true
}

object celeste {
  method esFuerte() = false
}

object pardo {
  method esFuerte() = false
}

object naranja {
  method esFuerte() = true
}

/*#################################*/
/*MATERIALES*/
/*#################################*/

object cobre {
  method brilla() = true
}

object vidrio {
  method brilla() = true
}

object lino {
  method brilla() = false
}

object madera {
  method brilla() = false
}

object cuero {
  method brilla() = false
}

/*#################################*/
/*ARTICULOS*/
/*#################################*/
object remera {
  method color() = rojo
  method peso() = 800
  method material() = lino
}

object pelota {
  method color() = pardo
  method peso() = 1300
  method material() = cuero
}

object biblioteca {
  method color() = verde
  method peso() = 8000
  method material() = madera
}

object munieco {
  var pesoMunieco = 0

  method color() = celeste

  /*Getter Peso*/
  method peso() = pesoMunieco

  /*Setter Peso*/
  method modificarPeso(nuevoPeso) { pesoMunieco = nuevoPeso }

  method material() = vidrio
}

object placa {
  var pesoPlaca = 0
  var colorPlaca = celeste

  /*Getter color*/
  method color() = colorPlaca
  
  /*Setter color*/
  method modificarColor(nuevoColor) { colorPlaca = nuevoColor }
  
  /*Getter Peso*/
  method peso() = pesoPlaca

  /*Setter Peso*/ 
  method modificarPeso(nuevoPeso) { pesoPlaca = nuevoPeso }
    
  method material() = cobre
}

object arito {
  method color() = celeste
  method peso() = 180
  method material() = cobre
}

object banquito {
  var colorBanquito = naranja

  /*Getter color*/
  method color() = colorBanquito
  
  /*Setter color*/
  method modificarColor(nuevoColor) { colorBanquito = nuevoColor }

  method peso() = 1700
  method material() = madera
}

object cajita {
  var objetoDentroDeCajita = null

  method color() = rojo
  method material() = cobre  

  /*Getter contenido*/
  method queContieneCajita() = objetoDentroDeCajita
  
  /*Setter contenido*/
  method modificarContenido(otroObjeto) { objetoDentroDeCajita = otroObjeto }

  method peso() = 400 + objetoDentroDeCajita.peso()
}