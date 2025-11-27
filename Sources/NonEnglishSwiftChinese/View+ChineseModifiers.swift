import SwiftUI

extension View {
    func 填充() -> some View {
        padding()
    }

    func 加粗() -> some View {
        bold()
    }

    func 填充(_ length: CGFloat) -> some View {
        padding(length)
    }

    func 字体粗细(_ weight: Font.Weight?) -> some View {
        fontWeight(weight)
    }

    func 字体(_ style: Font) -> some View {
        font(style)
    }

    func 自定义颜色(_ 颜色: Color) -> some View {
        foregroundColor(颜色)
    }

    func 多行文本对齐(_ 对齐方式: TextAlignment) -> some View {
        multilineTextAlignment(对齐方式)
    }

    func 框架(宽度: CGFloat? = nil, 高度: CGFloat? = nil, 对齐: Alignment = .center) -> some View {
        frame(width: 宽度, height: 高度, alignment: 对齐)
    }

    func 叠加<内容: View>(对齐: Alignment = .center, @ViewBuilder 内容: () -> 内容) -> some View {
        overlay(内容(), alignment: 对齐)
    }

    func 背景<内容: View>(_ 内容: 内容) -> some View {
        background(内容)
    }

    func 导航标题(_ 标题: String) -> some View {
        navigationTitle(标题)
    }

    func 圆角半径(_ 半径: CGFloat, 抗锯齿: Bool = true) -> some View {
        cornerRadius(半径, antialiased: 抗锯齿)
    }

    func 边框(颜色: Color, 宽度: CGFloat) -> some View {
        border(颜色, width: 宽度)
    }

    func 按钮样式<样式: ButtonStyle>(_ 样式: 样式) -> some View {
        buttonStyle(样式)
    }

    func 按钮样式<样式: PrimitiveButtonStyle>(_ 样式: 样式) -> some View {
        buttonStyle(样式)
    }

    func 旋转(_ 角度: Angle, 锚点: UnitPoint = .center) -> some View {
        rotationEffect(角度, anchor: 锚点)
    }

    func 三维旋转(_ 角度: Angle, 轴: 三维轴, 锚点: UnitPoint = .center) -> some View {
        rotation3DEffect(角度, axis: 轴, anchor: 锚点)
    }

    func 阴影(颜色: Color = .black, 半径: CGFloat = 0, x: CGFloat = 0, y: CGFloat = 0) -> some View {
        shadow(color: 颜色, radius: 半径, x: x, y: y)
    }

    func 缩放以适应() -> some View {
        scaledToFit()
    }

    func 缩放以填充() -> some View {
        scaledToFill()
    }

    func 缩放(_ 比例: CGFloat, 锚点: UnitPoint = .center) -> some View {
        scaleEffect(比例, anchor: 锚点)
    }

    func 忽略安全区边缘(_ 边缘: Edge.Set) -> some View {
        edgesIgnoringSafeArea(边缘)
    }

    func 裁剪() -> some View {
        clipped()
    }

    func 宽高比(内容模式: ContentMode) -> some View {
        aspectRatio(contentMode: 内容模式)
    }

    func 过渡(_ 过渡: AnyTransition) -> some View {
        transition(过渡)
    }

    func 标识<标识符: Hashable>(_ 标识符: 标识符) -> some View {
        id(标识符)
    }

    func 动画<值: Equatable>(_ 动画: Animation?, 值: 值) -> some View {
        animation(动画, value: 值)
    }
}

extension Image {
    func 符号渲染模式(_ 模式: SymbolRenderingMode) -> some View {
        symbolRenderingMode(模式)
    }

    func 可调整大小() -> some View {
        resizable()
    }
}

extension SymbolRenderingMode {
    static var 层次: SymbolRenderingMode { .hierarchical }
    static var 调色板: SymbolRenderingMode { .palette }
    static var 单色: SymbolRenderingMode { .monochrome }
}

extension ContentMode {
    static var 适应: ContentMode { .fit }
    static var 填满: ContentMode { .fill }
}

extension AnyTransition {
    static var 滑动: AnyTransition { .slide }
}

extension Shape {
    func 描边(颜色: Color, 线宽: CGFloat) -> some View {
        stroke(颜色, lineWidth: 线宽)
    }

    func 描边(颜色: Color, 样式: 描边样式) -> some View {
        stroke(颜色, style: 样式)
    }

    func 描边<填充: ShapeStyle>(_ 填充: 填充, 样式: 描边样式) -> some View {
        stroke(填充, style: 样式)
    }

    func 填充(_ 颜色: Color) -> some View {
        fill(颜色)
    }

    func 裁剪(起点: CGFloat, 终点: CGFloat) -> some Shape {
        trim(from: 起点, to: 终点)
    }
}

extension PrimitiveButtonStyle where Self == BorderlessButtonStyle {
    static var 无边框: BorderlessButtonStyle { .borderless }
}
