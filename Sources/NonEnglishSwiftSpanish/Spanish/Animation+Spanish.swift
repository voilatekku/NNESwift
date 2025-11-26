import SwiftUI

func animacion<Result>(_ animacion: Animation? = .default, ejecutar cuerpo: () -> Result) -> Result {
    withAnimation(animacion, cuerpo)
}

extension Animation {
    static var predeterminada: Animation { .default }

    static func lineal(duracion: Double) -> Animation {
        .linear(duration: duracion)
    }

    static func suavizarEntrada(duracion: Double) -> Animation {
        .easeIn(duration: duracion)
    }

    static func suavizarSalida(duracion: Double) -> Animation {
        .easeOut(duration: duracion)
    }

    static func suavizarEntradaSalida(duracion: Double) -> Animation {
        .easeInOut(duration: duracion)
    }

    static func resorte(respuesta: Double = 0.55, amortiguacion: Double = 0.825, duracionDeMezcla: Double = 0) -> Animation {
        .spring(response: respuesta, dampingFraction: amortiguacion, blendDuration: duracionDeMezcla)
    }

    static func resorteInterpolado(rigidez: Double, amortiguacion: Double, velocidadInicial: Double = 0) -> Animation {
        .interpolatingSpring(stiffness: rigidez, damping: amortiguacion, initialVelocity: velocidadInicial)
    }

    static func resorteInteractivo(respuesta: Double = 0.55, amortiguacion: Double = 0.825, duracionDeMezcla: Double = 0) -> Animation {
        .interactiveSpring(response: respuesta, dampingFraction: amortiguacion, blendDuration: duracionDeMezcla)
    }

    static func curvaTemporizada(punto1X: Double, punto1Y: Double, punto2X: Double, punto2Y: Double, duracion: Double) -> Animation {
        .timingCurve(punto1X, punto1Y, punto2X, punto2Y, duration: duracion)
    }
}
