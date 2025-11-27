import SwiftUI

extension Gradient {
    init(颜色: [Color]) {
        self.init(colors: 颜色)
    }
}

extension AngularGradient {
    init(渐变: Gradient, 中心: UnitPoint, 起始角度: Angle = .度(0), 结束角度: Angle = .度(360)) {
        self.init(gradient: 渐变, center: 中心, startAngle: 起始角度, endAngle: 结束角度)
    }
}
