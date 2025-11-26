import SwiftUI

@propertyWrapper
struct 状态<Value>: DynamicProperty {
    @State private var underlying: Value

    init(wrappedValue: Value) {
        _underlying = State(initialValue: wrappedValue)
    }

    var wrappedValue: Value {
        get { underlying }
        nonmutating set { underlying = newValue }
    }

    var projectedValue: 绑定<Value> {
        $underlying
    }
}
