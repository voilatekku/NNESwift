import SwiftUI

extension CGLineCap {
    static var 平头: CGLineCap { .butt }
    static var 圆头: CGLineCap { .round }
    static var 方头: CGLineCap { .square }
}

extension CGLineJoin {
    static var 尖角: CGLineJoin { .miter }
    static var 圆角: CGLineJoin { .round }
    static var 斜角: CGLineJoin { .bevel }
}

extension StrokeStyle {
    init(线宽: CGFloat = 1,
         线帽: CGLineCap = .平头,
         线连接: CGLineJoin = .尖角,
         尖角限制: CGFloat = 10,
         虚线: [CGFloat] = [],
         虚线偏移: CGFloat = 0) {
        self.init(lineWidth: 线宽,
                  lineCap: 线帽,
                  lineJoin: 线连接,
                  miterLimit: 尖角限制,
                  dash: 虚线,
                  dashPhase: 虚线偏移)
    }
}
