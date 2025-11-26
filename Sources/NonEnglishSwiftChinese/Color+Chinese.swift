import SwiftUI

extension Color {
    static var 强调颜色: Color { accentColor }
    static var 白色: Color { .white }
    static var 黑色: Color { .black }
    static var 灰色: Color { .gray }
    static var 红色: Color { .red }
    static var 橙色: Color { .orange }
    static var 黄色: Color { .yellow }
    static var 绿色: Color { .green }
    static var 薄荷色: Color { .mint }
    static var 青色: Color { .teal }
    static var 蓝绿色: Color { .cyan }
    static var 蓝色: Color { .blue }
    static var 靛蓝色: Color { .indigo }
    static var 紫色: Color { .purple }
    static var 粉色: Color { .pink }
    static var 棕色: Color { .brown }

    func 透明度(_ amount: Double) -> Color {
        opacity(amount)
    }

    init(白度: Double) {
        self.init(white: 白度)
    }
}
