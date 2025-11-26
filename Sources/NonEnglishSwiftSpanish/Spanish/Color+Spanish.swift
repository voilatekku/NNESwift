import SwiftUI

extension Color {
    static var colorDeAcento: Color { accentColor }
    static var blanco: Color { .white }
    static var negro: Color { .black }
    static var gris: Color { .gray }
    static var rojo: Color { .red }
    static var naranja: Color { .orange }
    static var amarillo: Color { .yellow }
    static var verde: Color { .green }
    static var menta: Color { .mint }
    static var verdeAzulado: Color { .teal }
    static var cian: Color { .cyan }
    static var azul: Color { .blue }
    static var purpura: Color { .purple }
    static var rosa: Color { .pink }
    static var marron: Color { .brown }

    func opacidad(_ cantidad: Double) -> Color {
        opacity(cantidad)
    }

    init(blancura: Double) {
        self.init(white: blancura)
    }
}
