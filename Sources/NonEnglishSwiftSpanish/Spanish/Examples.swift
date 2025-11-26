import SwiftUI

// MARK: - Spanish usage sample

struct VistaDeActividades: VistaEnEspañol {
    struct Actividad {
        let nombreIngles: String
        let nombreEspañol: String
    }

    var listaDeActividades: [Actividad] = [
        .init(nombreIngles: "Archery", nombreEspañol: "Tiro con arco"),
        .init(nombreIngles: "Baseball", nombreEspañol: "Béisbol"),
        .init(nombreIngles: "Basketball", nombreEspañol: "Baloncesto"),
        .init(nombreIngles: "Bowling", nombreEspañol: "Bolos"),
        .init(nombreIngles: "Boxing", nombreEspañol: "Boxeo"),
        .init(nombreIngles: "Cricket", nombreEspañol: "Críquet"),
        .init(nombreIngles: "Curling", nombreEspañol: "Curling"),
        .init(nombreIngles: "Fencing", nombreEspañol: "Esgrima"),
        .init(nombreIngles: "Golf", nombreEspañol: "Golf"),
        .init(nombreIngles: "Hiking", nombreEspañol: "Senderismo"),
        .init(nombreIngles: "Lacrosse", nombreEspañol: "Lacrosse"),
        .init(nombreIngles: "Rugby", nombreEspañol: "Rugby"),
        .init(nombreIngles: "Squash", nombreEspañol: "Squash"),
    ]

    var paleta: [Color] = [.azul, .verdeAzulado, .gris, .verde, .indigo, .menta, .naranja, .rosa, .purpura, .rojo]

    @Estado private var indiceSeleccionado = 1
    @Estado private var identificador = 1

    private var actividadActual: Actividad {
        listaDeActividades[indiceSeleccionado]
    }

    var cuerpoDeVista: some Vista {
        PilaVertical {
            Espaciador()

            Texto("Prueba uno de estos deportes")
                .fuente(.tituloGrande)
                .pesoDeFuente(.seminegrita)

            PilaVertical {
                Circulo()
                    .rellenar(paleta.elementoAleatorio() ?? .azul)
                    .relleno()
                    .superponer {
                        Imagen(systemName: "figure.\(actividadActual.nombreIngles.minusculas())")
                            .fuente(.sistema(tamano: 144))
                            .colorDePrimerPlano(.blanco)
                    }

                Texto("\(actividadActual.nombreEspañol)!")
                    .fuente(.titulo)
            }
            .transicion(.deslizar)
            .identificador(identificador)

            Espaciador()

            Boton("Intentar de nuevo") {
                animacion(.suavizarEntradaSalida(duracion: 1)) {
                    indiceSeleccionado = listaDeActividades.indicesColeccion.elementoAleatorio() ?? 0
                    identificador += 1
                }
            }
            .estiloDeBoton(.sinBorde)
        }
    }
}

#Preview {
    VistaDeActividades()
}
