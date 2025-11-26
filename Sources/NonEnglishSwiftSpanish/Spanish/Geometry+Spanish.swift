import SwiftUI

extension UnitPoint {
    static var centro: UnitPoint { .center }
    static var arribaInicio: UnitPoint { .topLeading }
    static var arriba: UnitPoint { .top }
    static var arribaFinal: UnitPoint { .topTrailing }
    static var inicio: UnitPoint { .leading }
    static var final: UnitPoint { .trailing }
    static var abajoInicio: UnitPoint { .bottomLeading }
    static var abajo: UnitPoint { .bottom }
    static var abajoFinal: UnitPoint { .bottomTrailing }

    static func coordenada(x: CGFloat, y: CGFloat) -> UnitPoint {
        UnitPoint(x: x, y: y)
    }
}

extension Angle {
    static func grados(_ valor: Double) -> Angle {
        degrees(valor)
    }
}

extension Edge.Set {
    static var todos: Edge.Set { .all }
    static var arriba: Edge.Set { .top }
    static var abajo: Edge.Set { .bottom }
    static var izquierda: Edge.Set { .leading }
    static var derecha: Edge.Set { .trailing }
}
