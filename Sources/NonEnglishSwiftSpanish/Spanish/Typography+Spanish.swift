import SwiftUI

extension TextAlignment {
    static var inicio: TextAlignment { .leading }
    static var centro: TextAlignment { .center }
    static var final: TextAlignment { .trailing }
}

extension HorizontalAlignment {
    static var inicio: HorizontalAlignment { .leading }
    static var centro: HorizontalAlignment { .center }
    static var final: HorizontalAlignment { .trailing }
}

extension VerticalAlignment {
    static var arriba: VerticalAlignment { .top }
    static var centro: VerticalAlignment { .center }
    static var abajo: VerticalAlignment { .bottom }
}

extension Alignment {
    static var centro: Alignment { .center }
    static var arribaInicio: Alignment { .topLeading }
    static var arribaFinal: Alignment { .topTrailing }
    static var abajoInicio: Alignment { .bottomLeading }
    static var abajoFinal: Alignment { .bottomTrailing }
}

extension Font.Weight {
    static var ultraligero: Font.Weight { .ultraLight }
    static var fino: Font.Weight { .thin }
    static var ligero: Font.Weight { .light }
    static var medio: Font.Weight { .medium }
    static var seminegrita: Font.Weight { .semibold }
    static var negrita: Font.Weight { .bold }
    static var pesado: Font.Weight { .heavy }
    static var negro: Font.Weight { .black }
}

extension Font {
    static var tituloGrande: Font { .largeTitle }
    static var titulo: Font { .title }
    static var titulo2: Font { .title2 }
    static var titulo3: Font { .title3 }
    static var encabezado: Font { .headline }
    static var subencabezado: Font { .subheadline }
    static var cuerpo: Font { .body }
    static var llamada: Font { .callout }
    static var leyenda: Font { .caption }
    static var leyenda2: Font { .caption2 }
    static var notaAlPie: Font { .footnote }

    static func sistema(_ estilo: Font.TextStyle, diseno: Font.Design = .default) -> Font {
        system(estilo, design: diseno)
    }

    static func sistema(tamano: CGFloat, diseno: Font.Design = .default) -> Font {
        system(size: tamano, design: diseno)
    }
}

extension Font.TextStyle {
    static var tituloGrande: Font.TextStyle { .largeTitle }
    static var titulo: Font.TextStyle { .title }
    static var titulo2: Font.TextStyle { .title2 }
    static var titulo3: Font.TextStyle { .title3 }
    static var encabezado: Font.TextStyle { .headline }
    static var subencabezado: Font.TextStyle { .subheadline }
    static var cuerpo: Font.TextStyle { .body }
    static var llamada: Font.TextStyle { .callout }
    static var leyenda: Font.TextStyle { .caption }
    static var leyenda2: Font.TextStyle { .caption2 }
    static var notaAlPie: Font.TextStyle { .footnote }
}

extension Font.Design {
    static var predeterminado: Font.Design { .default }
    static var redondeado: Font.Design { .rounded }
    static var monoespaciado: Font.Design { .monospaced }
}

extension Text {
    func espaciadoDeLinea(_ espacio: CGFloat) -> some View {
        lineSpacing(espacio)
    }

    func limiteDeLineas(_ lineas: Int?) -> some View {
        lineLimit(lineas)
    }

    func modoDeTruncamiento(_ modo: Text.TruncationMode) -> some View {
        truncationMode(modo)
    }
}

extension Text.TruncationMode {
    static var inicio: Text.TruncationMode { .head }
    static var final: Text.TruncationMode { .tail }
    static var medio: Text.TruncationMode { .middle }
}
