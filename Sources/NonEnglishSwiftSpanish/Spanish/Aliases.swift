import SwiftUI

// MARK: - Spanish alias layer

typealias PilaVertical = VStack
typealias PilaHorizontal = HStack
typealias PilaSuperpuesta = ZStack
typealias PilaVerticalPerezosa = LazyVStack
typealias PilaHorizontalPerezosa = LazyHStack
typealias Espaciador = Spacer
typealias VistaDesplazable = ScrollView
typealias LectorVistaDesplazable<Contenido: View> = ScrollViewReader<Contenido>
typealias ProxyVistaDesplazable = ScrollViewProxy
typealias RectanguloRedondeado = RoundedRectangle
typealias Circulo = Circle
typealias ParaCada<Dato, Identificador, Contenido> = ForEach<Dato, Identificador, Contenido> where Dato: RandomAccessCollection, Identificador: Hashable, Contenido: View
typealias Texto = Text
typealias Imagen = Image
typealias Boton = Button
typealias ControlDeslizante = Slider

// MARK: - Primitive types

typealias Entero = Int
typealias EnteroSinSigno = UInt
typealias Flotante = Float
typealias Doble = Double
typealias Booleano = Bool
typealias Cadena = String
typealias Caracter = Character
typealias FlotanteCG = CGFloat
typealias Vinculacion<Value> = Binding<Value>

typealias VistasDesplazablesAncladas = PinnedScrollableViews
typealias Separador = Divider
typealias Rectangulo = Rectangle
typealias Eje3D = (x: CGFloat, y: CGFloat, z: CGFloat)
typealias PuntoUnitario = UnitPoint
