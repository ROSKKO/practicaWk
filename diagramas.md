``` mermaid
classDiagram

class Jugador{
    + items_recolectados
    + capacidadInventario
    + dinero
    **m** alColisionarCon(item)
    **m** lanzarBasura(direccion)
    **m** recibirDanio(cantidad)
    **m** recolectarItem(item)
}

class Puesto{
    **m** comprarMejora(alguien, mejora)
}

class Basura{
    **m** tiempoRegeneracion()
    **m** alColisionarCon(jugador)
}

class Proyectil{
    **m** alColisionarCon(alguien)
}

class Vendedor{
    + basura
    **m** danio()
    **m** disparar(direccion)
}

class Jefe{
    **m** alColisionarCon(jugador)
    **m** recibirDanio(cantidad)
}

class Botella{
    **ovr** **m** danio()
}
class BotellaCara{
    **ovr** **m** danio()
}
class Caja{
    **ovr** **m** danio()
}
class CajaCara{
    **ovr** **m** danio()
}
class Papel{
    **ovr** **m** danio()
}

Botella     ..|> Basura
BotellaCara ..|> Basura
Caja        ..|> Basura
CajaCara    ..|> Basura
Papel       ..|> Basura

Proyectil --> Jefe

Vendedor --> Puesto

Jugador --> Basura
Jugador --> Vendedor
Jugador --> Proyectil


style Jugador stroke:#7879




```