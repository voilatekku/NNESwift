import SwiftUI

extension VStack {
    init(alineacion: HorizontalAlignment = .center, espacio: CGFloat? = nil, @ViewBuilder contenido: () -> Content) {
        self.init(alignment: alineacion, spacing: espacio, content: contenido)
    }

    init(@ViewBuilder contenido: () -> Content) {
        self.init(content: contenido)
    }
}

extension HStack {
    init(alineacion: VerticalAlignment = .center, espacio: CGFloat? = nil, @ViewBuilder contenido: () -> Content) {
        self.init(alignment: alineacion, spacing: espacio, content: contenido)
    }

    init(@ViewBuilder contenido: () -> Content) {
        self.init(content: contenido)
    }
}

extension ZStack {
    init(alineacion: Alignment = .center, @ViewBuilder contenido: () -> Content) {
        self.init(alignment: alineacion, content: contenido)
    }
}

extension ScrollView {
    init(_ ejes: Axis.Set = .vertical, muestraIndicadores: Bool = true, @ViewBuilder contenido: () -> Content) {
        self.init(ejes, showsIndicators: muestraIndicadores, content: contenido)
    }
}

extension ScrollViewProxy {
    func desplazarseA<Identidad: Hashable>(_ id: Identidad, anclaje: UnitPoint? = nil) {
        scrollTo(id, anchor: anclaje)
    }
}

extension LazyVStack {
    init(alineacion: HorizontalAlignment = .center,
         espacio: CGFloat? = nil,
         vistasFijas: VistasDesplazablesAncladas = [],
         @ViewBuilder contenido: () -> Content) {
        self.init(alignment: alineacion, spacing: espacio, pinnedViews: vistasFijas, content: contenido)
    }
}

extension PinnedScrollableViews {
    static var encabezadosDeSeccion: VistasDesplazablesAncladas { .sectionHeaders }
    static var piesDeSeccion: VistasDesplazablesAncladas { .sectionFooters }
}

extension LazyHStack {
    init(alineacion: VerticalAlignment = .center,
         espacio: CGFloat? = nil,
         vistasFijas: VistasDesplazablesAncladas = [],
         @ViewBuilder contenido: () -> Content) {
        self.init(alignment: alineacion, spacing: espacio, pinnedViews: vistasFijas, content: contenido)
    }
}

extension RoundedRectangle {
    init(radio: CGFloat, estilo: RoundedCornerStyle = .circular) {
        self.init(cornerRadius: radio, style: estilo)
    }
}
