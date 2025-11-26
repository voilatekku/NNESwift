extension Array {
    var 第一个: Element? { first }
    var 最后: Element? { last }

    func 第一个(满足 条件: (Element) -> Bool) -> Element? {
        first(where: 条件)
    }

    func 最后(满足 条件: (Element) -> Bool) -> Element? {
        last(where: 条件)
    }

    mutating func 添加(_ 元素: Element) {
        append(元素)
    }
}

extension Collection {
    func 随机元素() -> Element? {
        randomElement()
    }

    var 索引集: Indices {
        indices
    }
}

extension String {
    func 小写() -> String {
        lowercased()
    }

    func 大写() -> String {
        uppercased()
    }
}
