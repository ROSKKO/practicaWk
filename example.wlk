// object pepita {
//   var energy = 100

//   method energy() = energy

//   method fly(minutes) {
//     energy = energy - minutes * 3
//   }
// }

object pepita {
  var property energia = 50

    method fly(minutes) {
    energia = energia - minutes * 3
  }

  method comerAlpiste(cantidad) {
    energia += cantidad * 3
  }

  method volarEnCirculos() {
    if (energia < 20) {
      self.error("pepita no tiene suficiente energía para volar")      
    }
    energia -= 20
  }

}

// Declará acá tus objetos...
// object jazmin{
//   var pianoATocar = pianoFamiliar
//   method piano(elpiano){
//     pianoATocar = elpiano
//   }
  
//   method tocar(){
//     pianoATocar.uso(1) // paso el valor del porcentaje que se desafina
//   }
  
// }

// object pianoFamiliar{
//   const afinacionMax = 100
//   var afinacionActual = 100
//   method afinacion(){
//    return afinacionActual
//   }
//   method afinacion(nuevaAfinacion){
//     afinacionActual = nuevaAfinacion
//   }
//   method estaAfinado(){
//     return afinacionActual > (afinacionMax*0.8)
//   }
//   method uso(porcentaje){
//     afinacionActual -= (afinacionMax * porcentaje/100)
//   }
  
// }

// object lucio{
//   method afinar(piano, hora){
//     piano.afinacion(
//       (piano.afinacion() + self.afinacionXHora(hora)).min(100)
//     )
//   }
  
//   method afinacionXHora(hora){
//     return (hora * 0.5)
//   }
// }

// Declará acá tus objetos...
object jazmin{
  var pianoATocar = pianoFamiliar
  method piano(elpiano){
    pianoATocar = elpiano
  }
  
  method tocar(){
    pianoATocar.uso(1) // paso el valor del porcentaje que se desafina
  } 
}

object pianoFamiliar{
  const afinacionMax = 100
  var afinacionActual = 100
  method afinacion(){
   return (afinacionActual.abs())
  }
  method afinacion(nuevaAfinacion){
    afinacionActual = nuevaAfinacion
  }
  method afinacionMax(){
    return afinacionMax
  }
  method estaAfinado(){
    return afinacionActual >= (afinacionMax*0.8).abs()
  }
  method uso(porcentaje){
    afinacionActual -= (afinacionActual * porcentaje/100)
  }
}

object lucio{
  method afinar(piano, hora){
    piano.afinacion(
      (
      (piano.afinacion() + self.afinacionXHora(hora)).roundUp()
      ).min(100)
    )
  }
  
  method afinacionXHora(hora){
    return (hora *(pianoFamiliar.afinacionMax()* 0.05))
  }
}

object tom {
  var energia = 80
  // var velocidad = 5 + (energia / 10)
  var posicion = 0

  method posicion(){
    return posicion
  }

  method velocidad(){
    return 5 + (energia / 10)
  }

  method correrA(raton){
    energia -= 0.5 * self.velocidad() * (raton.posicion() - self.posicion())
    posicion = raton.posicion()
  }

  method esMasVeloz(raton){
    return self.velocidad() > raton.velocidad()
  }
}

object jerry{
  const peso = 3
  // var velocidad = 10 - peso
  var posicion = 10

  method posicion(){
    return posicion
  }

  method velocidad(){
    return 10 - peso
  }

}

object robotRaton {
  const velocidad = 8
  var posicion = 12
  
  method velocidad() {
    return velocidad
  }

  method posicion(){
    return posicion
  }
}

object logan {
  var peso = 70
  var sustancia = clo2
  var rendimiento = 100
  method consumir(cantidad, sust){
    sustancia = sust
    rendimiento = sust.rendimiento(cantidad)

  }

  method fuerza(){
    return rendimiento * 5 * peso
  }
}

object clo2 {
  method rendimiento(cantidad){
    return 0.9 ** cantidad
  }
}

object terere{
  method rendimiento(cantidad){
    return (0.1 * cantidad).max(1)
  }
}

object cianuro{
  method rendimiento(_){
    return 0
  }
}


// object delfina{
//   var consola = play
//   var diversion = 0

//   method agarrar(n_consola){
//     consola = n_consola
//   }

//   method jugar(videojuego){
//     diversion += videojuego.jugar(consola)
//     consola.usar()
//   }

//   method diversion(){return diversion}

// }

// object play{
//   method jugabilidad(){
//     return 10
//   }

//   method usar(){
//     return
//   }
// }

// object portatil{
//   var bateria = "bateria completa"

//   method usar(){
//     bateria = "bateria baja"
//   }
  
//   method jugabilidad(){
//     // depende de la bateria
//     if(bateria == "bateria baja"){
//       return 1
//     } else {
//       return 8
//     }

//   }
// }

// object arkanoid{
//   method jugar(_){
//     return 50 // retorna la cantidad de diversion que otorga
//   }
// }

// object mario{
//   method jugar(consola){

//     if(consola.jugabilidad() > 5){
//       return 100
//     } else {
//       return 15
//     }

//   }
// }

// object pokemon{

//   method jugar(consola){
//     return 10 * consola.jugabilidad()
//   }
// }

object delfina{
  var consola = play
  var diversion = 0

  method agarrar(n_consola){
    consola = n_consola
  }

  method jugar(videojuego){
    diversion += videojuego.jugar(consola)
    consola.usar()
  }

  method diversion(){return diversion}

}

object play{
  method jugabilidad(){
    return 10
  }

  method usar(){
    return
  }
}

object portatil{
  var bateria = "bateria completa"

  method usar(){
    bateria = "bateria baja"
  }
  
  method jugabilidad(){
    // depende de la bateria
    if(bateria == "bateria baja"){
      return 1
    } else {
      return 8
    }

  }
}

object arkanoid{
  method jugar(_){
    return 50 // retorna la cantidad de diversion que otorga
  }
}

object mario{
  method jugar(consola){

    if(consola.jugabilidad() > 5){
      return 100
    } else {
      return 15
    }

  }
}

object pokemon{

  method jugar(consola){
    return 10 * consola.jugabilidad()
  }
}

object devilMayLaughVI{
  var nivelDeSangre = 3
  method tiempoRestante(){
    return 100
  }

  method esViolento(){
    return nivelDeSangre > 5
  }

  method jugar(horas){
    nivelDeSangre += 1
  }
}

object carlosDuty{
  var cantidadDeLogros = 0
  method tiempoRestante(){
    return 30 - cantidadDeLogros * 0.5
  }

  method esViolento(){
    return true
  }

  method jugar(horas){
    if(horas>=2){
      cantidadDeLogros+=1
    }
  }
}

object timbaElLeon{
  var tiempoRestante = 50 // horas
  method tiempoRestante(){
    return tiempoRestante
  }

  method esViolento(){
    return false
  }

  method jugar(horas){
    tiempoRestante -= horas
  }
}

object biblioteca {
  var juegos = [timbaElLeon, carlosDuty]
  var puntos = 0
  /*
  OPERACIONES QUE SE PUEDEN USAR CON LISTAS
  lista.add(item_a_agregar)
  lista.remove(item_a_eliminar)
  lista.contains(item_a_buscar)
  lista.size()
  */
  method juegos(){
    return juegos
  }

  method puntos(){
    return puntos
  }

  method adquirirJuego(unJuego){
    juegos.add(unJuego)
    puntos += 150
  }

  method borrarJuego(unJuego){
    juegos.remove(unJuego)
  }

  method esDeGamer(){
    return puntos > 1000 && juegos.size() > 5
  }

  method esJuegoRecomendable(unJuego){
    return !juegos.contains(unJuego) && unJuego.esViolento()
  }

  method juegosViolentos(){
    return juegos.filter({juego => juego.esViolento()})
  }

  method unoConMasHorasRestantesQue(unasHoras){
    return juegos.find({juego => juego.tiempoRestante() > unasHoras})
  }

  method muchaViolencia(){
    return juegos.all({juego => juego.esViolento()})
  }

  method todaviaHayParaRato(){
    return juegos.any({juego => juego.tiempoRestante() > 20})
  }

  method tiemposViolentos(){
    // var juegos_violentos = self.juegosViolentos()
    return (self.juegosViolentos()).map({juego => juego.tiempoRestante()})
  }

  /*
  Agregá a la biblioteca promedioDeViolencia(),
   que retorne la división entre la sumatoria de tiempo
    restante de los juegos de la biblioteca dividido por
     la cantidad de juegos de la misma que sean violentos.
  */

  method promedioDeViolencia(){
    // return (juegos.map({juego => juego.tiempoRestante()})).sum() / self.juegosViolentos().count().sum()
    return juegos.sum({juego => juego.tiempoRestante()}) / juegos.count({juego => juego.esViolento()})
  }

  method jugarATodo(){
    juegos.forEach({juego => juego.jugar(5)})
  }
}

/*
DESTINOS --------------------------------------------------------------------------
*/

object laMatrix{
  method dejaEntrar(persona){
    return persona.credito() > 5
  }
}

object puenteDeBrooklyn{
  method dejaEntrar(persona){
    return persona.peso() < 1000 // en kilos
  }
}

/*
PERSONAS --------------------------------------------------------------------------
*/

object neo{
  var credito = 7
  const peso = 0
  method peso(){
    return peso
  }
  method credito(){
    return credito
  }
  method llamar(){
    credito -= 5
  }



}

object roberto{
  var credito = 0
  var transporte = bicicleta
  const peso = 90

  method peso(){
    return peso + transporte.peso()
  }

  method credito(){
    return credito
  }

  method llamar(){
    credito -= 5
  }

  method transporte(n_transporte){
    transporte = n_transporte
  }

  method agregarAcoplado(){
    transporte.agregarAcoplado()
  }

}

object chuck{
  var credito = 999
  // var transporte = bicicleta
  const peso = 900

  method peso(){
    // return peso + transporte.peso()
    return peso
  }

  method credito(){
    return credito
  }

  method llamar(){
    return
  }

  method transporte(n_transporte){
    // transporte = n_transporte
    return
  }

  method agregarAcoplado(){
    // transporte.agregarAcoplado()
    return
  }
}

/*
TRANSPORTES --------------------------------------------------------------------------
*/

object bicicleta{
  const peso = 1
  method peso(){
    return peso
  }

  method acoplados(){
    return 1
  }

  method agregarAcoplados(){
    return
  }
}

object camion{
  const peso = 500
  var acoplados = 1
  method peso(){
    return peso * acoplados
  }

  method acoplados(){
    return acoplados
  }

  method agregarAcoplado(){
    acoplados += 1
  }
}

object prueba{
  method robertoTieneBici(){
    roberto.transporte(bicicleta)
  }
  method robertoTieneCamionCon1Acoplado(){
    // configurá a roberto acá
    roberto.transporte(camion)
  }
  method unAcopladoMasParaElCamionDeRoberto(){
    roberto.agregarAcoplado()
  }
}

/*
PAQUETES --------------------------------------------------------------------------
*/

object paquete {
  var estaPago = false // false = no esta pago , true = esta pago
  var destino = laMatrix

  var precio_actual = 0


  method destino(ndestino){
    destino = ndestino
  }
  method pagar(){
    estaPago = true
  }
  method pagar(importe){ // no se usa
    precio_actual += importe
  }
  method estaPago(){
    return estaPago
  }
  method puedeSerEntregadoPor(persona){
    return estaPago && destino.dejaEntrar(persona)
  }

  method precio(){
    return 50
  }

  method destinos(_){
    return "[!] Este paquete solo puede tener 1 destino"
  }
}

object paquetito {
  var estaPago = true // false = no esta pago , true = esta pago
  var destino = laMatrix
  

  method destino(ndestino){
    destino = ndestino
  }
  method pagar(importe){
    return
  }
  method estaPago(){
    return estaPago
  }
  method puedeSerEntregadoPor(persona){
    return true
  }

  method precio(){
    return 0
  }

  method destinos(_){
    return
  }
}

object paqueton{
  // var estaPago = {precio_actual == self.precio()}
  var destinos = [] // multiples destinos
  var precio_actual = 0

  method destino(_){
    return
  }

  method pagar(importe){
    precio_actual += importe
  }
  method estaPago(){
    return precio_actual == self.precio()
  }
  method puedeSerEntregadoPor(persona){
    return (precio_actual == self.precio()) && destinos.all({destino => destino.dejaEntrar(persona)})
  }

  // propio
  method precio(){
    return 100 * destinos.size()
  }

  // compartido
  method destinos(ndestino){
    destinos = ndestino
  }
}

/*
MENSAJERIA --------------------------------------------------------------------------
*/

object mensajeria{
  // var empleados = [roberto, neo, chuckNorris]
  var empleados = [] // inicialmente vacia
  var paquetes_pendientes = []
  method empleados(){
    return empleados
  }

  method contratar(persona){
    empleados.add(persona)
  }

  method despedir(persona){
    empleados.remove(persona)
  }

  method despedirATodos(){
    /*
    // empleados.forEach({ empleado => empleados.remove(empleado) })
    */
    empleados.clear()
    /*
    o tmb podria hacer empleados = []
    */
  }

  method esGrande(){
    return empleados.size() > 2
  }

  method loEntregaElPrimero(){
    // return si el primer mensajero puede entregar el paquete (suponiendo que ya esta pago y el destino es la matrix)
    return paquete.puedeSerEntregadoPor(empleados.first())
  }

  method pesoDelUltimo(){
    return empleados.last().peso()
  }

  method algunoPuedeEntregar(unPaquete){
    return empleados.any({empleado =>
         unPaquete.puedeSerEntregadoPor(empleado)
         })
  }

  method candidatosPara(unPaquete){
    return empleados.filter({empleado => 
      unPaquete.puedeSerEntregadoPor(empleado)})
  }

  method tieneSobrepeso(){
    // return (empleados.map({empleado =>
    //   empleado.peso() }).sum() / empleados.size()) > 500
    return (empleados.map({empleado => empleado.peso()}).average()) > 500 
  }

  // method losPuedeEnviar(unPaquete){
  //   return empleados.filter({empleado => unPaquete.puedeSerEntregadoPor(empleado)})
  // }

  method enviar(unPaquete){
    if(self.algunoPuedeEntregar(unPaquete)){
      // return empleados.find({empleado => unPaquete.puedeSerEntregadoPor(empleado)})
      if(paquetes_pendientes.contains(unPaquete)){
        // es un paquete pendiente
        paquetes_pendientes.remove(unPaquete)
      } else {
        // no es un paquete pendiente
        return
      }
    } else { // nadie lo puede entregar
      if( ! paquetes_pendientes.contains(unPaquete) ){
        // caso en que el paquete no este en paquetes pendientes
        paquetes_pendientes.add(unPaquete)

      } else{
        // caso en que el paquete ya este en pendientes
        // paquetes_pendientes.remove(unPaquete)
        return
      }
    }
  }

  method enviarTodos(paquetes){
    paquetes.forEach({unPaquete => self.enviar(unPaquete)})
  }

  method paqueteMasCaro(){
    // retorna un pquete
    return paquetes_pendientes.find(
      { 
        unPaquete => unPaquete.precio() == (paquetes_pendientes.map({paqPendiente => paqPendiente.precio()}).max() )
         })
    
    
  }

  method enviarPendienteCaro(){
    self.enviar(self.paqueteMasCaro())
  }

  method pendientes(conjuntoPaquetes){
    paquetes_pendientes = conjuntoPaquetes
  }

  method pendientes(){
    return paquetes_pendientes
  }
}

// object mensajeria{
//   var empleados = []
//   method empleados(){
//     return empleados
//   }

//   method contratar(persona){
//     empleados.add(persona)
//   }

//   method despedir(persona){
//     empleados.remove(persona)
//   }

//   method despedirATodos(){
//     /*
//     // empleados.forEach({ empleado => empleados.remove(empleado) })
//     */
//     empleados.clear()
//     /*
//     o tmb podria hacer empleados = []
//     */
//   }

//   method esGrande(){
//     return empleados.size() > 2
//   }

//   method loEntregaElPrimero(){
//     // return si el primer mensajero puede entregar el paquete (suponiendo que ya esta pago y el destino es la matrix)
//     return paquete.puedeSerEntregadoPor(empleados.first())
//   }

//   method pesoDelUltimo(){
//     return empleados.last().peso()
//   }
// }


/*
-------------------- SPRINGFIELD ----------------------------------------  
*/

object centralNuclear {
  const varillas = 200
  method produccionEnergetica(){
    return varillas * 0.1
  }

  method esContaminante(){
    return true
  }
}

object centralCarbon{
  const toneladas = 1000
  method produccionEnergetica(){
    return 0.5 + toneladas * springfield.riquezaSuelo()
  }
  method esContaminante(){
    return true
  }
}

object centralEolica{

  method produccionEnergetica(){
    return 0.2 * springfield.vientos()
  }
  method esContaminante(){
    return false
  }
}

object springfield{
  const centrales=[centralNuclear, centralCarbon, centralEolica]
  var energia_requerida = 0

  method riquezaSuelo(){
    return 0.9
  }

  method vientos(){
    return 10 // m/s
  }

  method centralesContaminantes(){
    return centrales.filter({central => central.esContaminante()})
  }

  method necesidadEnergetica(energiaNecesaria){
    energia_requerida = energiaNecesaria
  }

  method cubreNecesidad(){
    return centrales.map({central => central.produccionEnergetica()}).sum() >= energia_requerida
  }

  method estaAlHorno(){
    /*
    esto ocurre cuando las centrales contaminantes aportan más del 50% de lo necesario, ó si todas las centrales son contaminantes.
    */
    return centrales.all({central => central.esContaminante()}) || centrales.filter({central => central.esContaminante()}).all({central => central.produccionEnergetica() > energia_requerida * 0.5})
  }

  method produccionEnergetica(){
    return centrales.map({central => central.produccionEnergetica()}).sum()
  }

  method centralPrincipal(){
    return centrales.find({
      central => central.produccionEnergetica() == (
        centrales.map({otraCentral => otraCentral.produccionEnergetica()}).max()
      )
    })
  }
}

object centralHidroelectrica{
  method produccionEnergetica(){
    return 2000000 * albuquerque.caudal()
  }
}

object albuquerque{
  var centrales = [centralHidroelectrica]
  method caudal(){
    return 150 // l/s
  }

  method produccionEnergetica(){
    return centralHidroelectrica.produccionEnergetica()
  }

  method centralPrincipal(){
    return centrales.find({
      central => central.produccionEnergetica() == (
        centrales.map({otraCentral => otraCentral.produccionEnergetica()}).max()
      )
    })
  }

}

object laRegion{
  var ciudades = []

  method agregarCiudad(ciudad){
    ciudades.add(ciudad)
  }

  method principalCiudadProductora(){
    return ciudades.find({
      ciudad => ciudad.produccionEnergetica() == (
        ciudades.map({otra_ciudad => otra_ciudad.produccionEnergetica()}).max()
        )
    })
  }

  method principalesCentrales(){
    return ciudades.map({ciudad => ciudad.centralPrincipal()})
  }
}

/*
Para manejar errores - usar self.error(mensaje)



object pepita {
  var property energia = 50

  method comerAlpiste(cantidad) {
    energia += cantidad * 3
  }

  method volarEnCirculos() {
    if (energia < 20) {
      self.error("pepita no tiene suficiente energía para volar")      
    }
    energia -= 20
  }

}

*/

object carlos{
  method estudiarPepita(){
    pepita.comerAlpiste(10)
    pepita.volarEnCirculos()
    // if(pepita.energia() < 20){
    //   self.error("Erro")
    // }
    /*
    no hace falta incluir el if porque el self.error
    de volarEnCirculos ya rompe con la ejecucion del
    programa
    */
    pepita.volarEnCirculos()
    pepita.comerAlpiste(10)

  }
}

// ZOMBIES
object bouba{
  var property salud = 100

  method sabeCorrer(){
    return false
  }

  method recibirDanio(danio){
    self.salud( (self.salud() - (danio*2)).max(0) )
  }

  method vivo(){
    return salud > 0
  }
}

object kiki{
  var property salud = 100

  method sabeCorrer(){
    return false
  }

  method recibirDanio(danio){
    self.salud( (self.salud() - (danio*2)).max(0) )
  }

  method vivo(){
    return salud > 0
  }
}

/*
Si varios objetos tienen el código parecido pero no puede ser generalizado para que sea el mismo, no nos sirve definir una clase. A lo sumo,
 si tenemos algunos objetos con cierta definición y otros con una definición diferente, definimos dos clases. Al menos por ahora...

const bouba = new Zombi()
const kiki = new Zombi()


*/


class Zombi{
  var property salud = 100

  method sabeCorrer(){
    return false
  }

  method recibirDanio(danio){
    self.salud( (self.salud() - (danio*2)).max(0) )
  }

  method vivo(){
    return salud > 0
  }
}
// SOBREVIVIENTES

/*
object juliana{
  var property energia = 100

  method atacar(zombie){
    zombie.recibirDanio( self.energia() * 0.1 )
  }
  
}
object anastasia{
  var property energia = 100

  method atacar(zombie){
    zombie.recibirDanio( self.energia() * 0.1 )
  }
}
*/
object juliana{
  var property energia = 100

  method atacar(zombie){
    zombie.recibirDanio( self.energia() * 0.1 )
  }

}
object anastasia{
  var property energia = 100

  method atacar(zombie){
    zombie.recibirDanio( self.energia() * 0.1 )
  }
}
class Sobreviviente{
  var property energia = 100

  method atacar(zombie){
    zombie.recibirDanio( self.energia() * 0.1 )
  }

  method ataqueMasivo(zombis){
    zombis.forEach({zombi => self.atacar(zombi)})
    self.energia( self.energia() - 50)
  }
}

const juliana_s = new   Sobreviviente(energia = 100)
const anastasia_s = new Sobreviviente(energia = 150)

object invasion{
  const property zombis = [ new Zombi() ]

  method tamanio(){
    return zombis.count({zombi => zombi.vivo() })
  }

  method incrementar(){
    (self.vivos().size()).times({n => self.nuevo_zombi() })
  }

  // opcional
  method nuevo_zombi(){
    zombis.add(new Zombi())
  }

  method vivos(){
    return self.zombis().filter({zombi => zombi.vivo()})
  }
}

