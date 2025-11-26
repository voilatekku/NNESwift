import SwiftUI

extension UnitPoint {
    static var 居中: UnitPoint { .center }
    static var 顶部靠前: UnitPoint { .topLeading }
    static var 顶部: UnitPoint { .top }
    static var 顶部靠后: UnitPoint { .topTrailing }
    static var 靠前: UnitPoint { .leading }
    static var 靠后: UnitPoint { .trailing }
    static var 底部靠前: UnitPoint { .bottomLeading }
    static var 底部: UnitPoint { .bottom }
    static var 底部靠后: UnitPoint { .bottomTrailing }

    static func 坐标(x: CGFloat, y: CGFloat) -> UnitPoint {
        UnitPoint(x: x, y: y)
    }
}

extension Angle {
    static func 度(_ 度数: Double) -> Angle {
        degrees(度数)
    }
}

extension Edge.Set {
    static var 全部: Edge.Set { .all }
    static var 顶部: Edge.Set { .top }
    static var 底部: Edge.Set { .bottom }
    static var 左边: Edge.Set { .leading }
    static var 右边: Edge.Set { .trailing }
    static var 水平: Edge.Set { .horizontal }
    static var 垂直: Edge.Set { .vertical }
}
