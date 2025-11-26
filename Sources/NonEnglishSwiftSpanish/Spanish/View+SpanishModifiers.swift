import SwiftUI

extension View {
    func relleno() -> some View {
        padding()
    }

    func negrita() -> some View {
        bold()
    }

    func relleno(_ longitud: CGFloat) -> some View {
        padding(longitud)
    }

    func pesoDeFuente(_ peso: Font.Weight?) -> some View {
        fontWeight(peso)
    }

    func fuente(_ estilo: Font) -> some View {
        font(estilo)
    }

    func colorDePrimerPlano(_ color: Color) -> some View {
        foregroundColor(color)
    }

    func alineacionDeTextoMultilinea(_ alineacion: TextAlignment) -> some View {
        multilineTextAlignment(alineacion)
    }

    func marco(ancho: CGFloat? = nil, alto: CGFloat? = nil, alineacion: Alignment = .center) -> some View {
        frame(width: ancho, height: alto, alignment: alineacion)
    }

    func superponer<Contenido: View>(alineacion: Alignment = .center, @ViewBuilder contenido: () -> Contenido) -> some View {
        overlay(contenido(), alignment: alineacion)
    }

    func fondo<Contenido: View>(_ contenido: Contenido) -> some View {
        background(contenido)
    }

    func radioDeEsquina(_ radio: CGFloat, suavizado: Bool = true) -> some View {
        cornerRadius(radio, antialiased: suavizado)
    }

    func borde(color: Color, ancho: CGFloat) -> some View {
        border(color, width: ancho)
    }

    func estiloDeBoton<Estilo: ButtonStyle>(_ estilo: Estilo) -> some View {
        buttonStyle(estilo)
    }

    func estiloDeBoton<Estilo: PrimitiveButtonStyle>(_ estilo: Estilo) -> some View {
        buttonStyle(estilo)
    }

    func rotacion(_ angulo: Angle, anclaje: UnitPoint = .center) -> some View {
        rotationEffect(angulo, anchor: anclaje)
    }

    func rotacion3D(_ angulo: Angle, eje: Eje3D, anclaje: UnitPoint = .center) -> some View {
        rotation3DEffect(angulo, axis: eje, anchor: anclaje)
    }

    func sombra(color: Color = .black, radio: CGFloat = 0, x: CGFloat = 0, y: CGFloat = 0) -> some View {
        shadow(color: color, radius: radio, x: x, y: y)
    }

    func escalarParaAjustar() -> some View {
        scaledToFit()
    }

    func escalarParaRellenar() -> some View {
        scaledToFill()
    }

    func ignorarBordesDeSeguridad(_ bordes: Edge.Set) -> some View {
        edgesIgnoringSafeArea(bordes)
    }

    func recortar() -> some View {
        clipped()
    }

    func relacionDeAspecto(modo: ContentMode) -> some View {
        aspectRatio(contentMode: modo)
    }

    func transicion(_ transicion: AnyTransition) -> some View {
        transition(transicion)
    }

    func identificador<Identidad: Hashable>(_ id: Identidad) -> some View {
        self.id(id)
    }
}

extension Image {
    func modoDeRepresentacionDeSimbolo(_ modo: SymbolRenderingMode) -> some View {
        symbolRenderingMode(modo)
    }

    func redimensionable() -> some View {
        resizable()
    }
}

extension SymbolRenderingMode {
    static var jerarquico: SymbolRenderingMode { .hierarchical }
    static var paleta: SymbolRenderingMode { .palette }
    static var monocromo: SymbolRenderingMode { .monochrome }
}

extension ContentMode {
    static var ajustar: ContentMode { .fit }
    static var rellenar: ContentMode { .fill }
}

extension AnyTransition {
    static var deslizar: AnyTransition { .slide }
}

extension Shape {
    func contorno(color: Color, ancho: CGFloat) -> some View {
        stroke(color, lineWidth: ancho)
    }

    func rellenar(_ color: Color) -> some View {
        fill(color)
    }
}

extension PrimitiveButtonStyle where Self == BorderlessButtonStyle {
    static var sinBorde: BorderlessButtonStyle { .borderless }
}
