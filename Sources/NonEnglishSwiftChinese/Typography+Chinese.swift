import SwiftUI

extension TextAlignment {
    static var 靠前: TextAlignment { .leading }
    static var 居中: TextAlignment { .center }
    static var 靠后: TextAlignment { .trailing }
}

extension HorizontalAlignment {
    static var 靠前: HorizontalAlignment { .leading }
    static var 居中: HorizontalAlignment { .center }
    static var 靠后: HorizontalAlignment { .trailing }
}

extension VerticalAlignment {
    static var 顶部: VerticalAlignment { .top }
    static var 居中: VerticalAlignment { .center }
    static var 底部: VerticalAlignment { .bottom }
}

extension Alignment {
    static var 居中: Alignment { .center }
    static var 顶部靠前: Alignment { .topLeading }
    static var 顶部靠后: Alignment { .topTrailing }
    static var 底部靠前: Alignment { .bottomLeading }
    static var 底部靠后: Alignment { .bottomTrailing }
}

extension Font.Weight {
    static var 极细: Font.Weight { .ultraLight }
    static var 纤细: Font.Weight { .thin }
    static var 轻: Font.Weight { .light }
    static var 常规: Font.Weight { .regular }
    static var 中等: Font.Weight { .medium }
    static var 半粗: Font.Weight { .semibold }
    static var 粗体: Font.Weight { .bold }
    static var 粗重: Font.Weight { .heavy }
    static var 黑体: Font.Weight { .black }
}

extension Font {
    static var 极大标题: Font { .largeTitle }
    static var 标题: Font { .title }
    static var 二级标题: Font { .title2 }
    static var 三级标题: Font { .title3 }
    static var 主标题: Font { .headline }
    static var 副标题: Font { .subheadline }
    static var 正文: Font { .body }
    static var 提示: Font { .callout }
    static var 字幕: Font { .caption }
    static var 字幕2: Font { .caption2 }
    static var 脚注: Font { .footnote }

    static func 系统(_ 样式: Font.TextStyle, 设计: Font.Design = .default) -> Font {
        system(样式, design: 设计)
    }

    static func 系统(大小: CGFloat, 设计: Font.Design = .default) -> Font {
        system(size: 大小, design: 设计)
    }
}

extension Font.TextStyle {
    static var 极大标题: Font.TextStyle { .largeTitle }
    static var 标题: Font.TextStyle { .title }
    static var 二级标题: Font.TextStyle { .title2 }
    static var 三级标题: Font.TextStyle { .title3 }
    static var 主标题: Font.TextStyle { .headline }
    static var 副标题: Font.TextStyle { .subheadline }
    static var 正文: Font.TextStyle { .body }
    static var 提示: Font.TextStyle { .callout }
    static var 字幕: Font.TextStyle { .caption }
    static var 字幕2: Font.TextStyle { .caption2 }
    static var 脚注: Font.TextStyle { .footnote }
}

extension Font.Design {
    static var 默认: Font.Design { .default }
    static var 衬线: Font.Design { .serif }
    static var 圆角: Font.Design { .rounded }
    static var 等宽: Font.Design { .monospaced }
}

extension Text {
    func 行距(_ 间距: CGFloat) -> some View {
        lineSpacing(间距)
    }

    func 行数限制(_ 行数: Int?) -> some View {
        lineLimit(行数)
    }

    func 截断模式(_ 模式: Text.TruncationMode) -> some View {
        truncationMode(模式)
    }
}

extension Text.TruncationMode {
    static var 头: Text.TruncationMode { .head }
    static var 尾: Text.TruncationMode { .tail }
    static var 中间: Text.TruncationMode { .middle }
}
