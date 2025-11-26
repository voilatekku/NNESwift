import SwiftUI

@propertyWrapper
struct Estado<Value>: DynamicProperty {
    @State private var subyacente: Value

    init(wrappedValue: Value) {
        _subyacente = State(initialValue: wrappedValue)
    }

    var wrappedValue: Value {
        get { subyacente }
        nonmutating set { subyacente = newValue }
    }

    var projectedValue: Vinculacion<Value> {
        $subyacente
    }
}
