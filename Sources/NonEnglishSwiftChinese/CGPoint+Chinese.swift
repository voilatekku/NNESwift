import CoreGraphics

extension CGPoint {
    init(横: CGFloat = 0, 纵: CGFloat = 0) {
        self.init(x: 横, y: 纵)
    }

    var 横坐标: CGFloat {
        get { x }
        set { x = newValue }
    }

    var 纵坐标: CGFloat {
        get { y }
        set { y = newValue }
    }

    static var 零点: CGPoint {
        .zero
    }

    func 偏移(横: CGFloat = 0, 纵: CGFloat = 0) -> CGPoint {
        .init(x: x + 横, y: y + 纵)
    }

    mutating func 就地偏移(横: CGFloat = 0, 纵: CGFloat = 0) {
        x += 横
        y += 纵
    }
}
