extension Array {
    var primero: Element? { first }
    var ultimo: Element? { last }

    func primero(donde condicion: (Element) -> Bool) -> Element? {
        first(where: condicion)
    }

    func ultimo(donde condicion: (Element) -> Bool) -> Element? {
        last(where: condicion)
    }

    mutating func agregar(_ elemento: Element) {
        append(elemento)
    }
}

extension Collection {
    func elementoAleatorio() -> Element? {
        randomElement()
    }

    var indicesColeccion: Indices {
        indices
    }
}

extension String {
    func minusculas() -> String {
        lowercased()
    }

    func mayusculas() -> String {
        uppercased()
    }
}
