import SwiftUI

/// Una vista compatible con SwiftUI que utiliza terminología en español para el cuerpo de la vista.
///
/// Los tipos conformes proporcionan `cuerpoDeVista`, que se reexpone al requisito
/// `body` proveniente de `View`.
public typealias Vista = View

public protocol VistaEnEspañol: Vista {
    associatedtype TipoDeCuerpoDeVista: Vista

    @ViewBuilder var cuerpoDeVista: TipoDeCuerpoDeVista { get }
}

public extension VistaEnEspañol {
    var body: some Vista {
        cuerpoDeVista
    }
}
