import SwiftUI

extension VStack {
    init(对齐: HorizontalAlignment = .center, 间距: CGFloat? = nil, @ViewBuilder 内容: () -> Content) {
        self.init(alignment: 对齐, spacing: 间距, content: 内容)
    }

    init(@ViewBuilder 内容: () -> Content) {
        self.init(content: 内容)
    }
}

extension HStack {
    init(对齐: VerticalAlignment = .center, 间距: CGFloat? = nil, @ViewBuilder 内容: () -> Content) {
        self.init(alignment: 对齐, spacing: 间距, content: 内容)
    }

    init(@ViewBuilder 内容: () -> Content) {
        self.init(content: 内容)
    }
}

extension ZStack {
    init(对齐: Alignment = .center, @ViewBuilder 内容: () -> Content) {
        self.init(alignment: 对齐, content: 内容)
    }
}

extension ScrollView {
    init(_ 方向: Axis.Set = .vertical, 显示滚动条: Bool = true, @ViewBuilder 内容: () -> Content) {
        self.init(方向, showsIndicators: 显示滚动条, content: 内容)
    }
}

extension ScrollViewProxy {
    func 滚动到<标识: Hashable>(_ 标识: 标识, 锚点: UnitPoint? = nil) {
        scrollTo(标识, anchor: 锚点)
    }
}

extension LazyVStack {
    init(对齐: HorizontalAlignment = .center,
         间距: CGFloat? = nil,
         固定视图: 固定滚动视图 = [],
         @ViewBuilder 内容: () -> Content) {
        self.init(alignment: 对齐, spacing: 间距, pinnedViews: 固定视图, content: 内容)
    }
}

extension PinnedScrollableViews {
    static var 章节标题: 固定滚动视图 { .sectionHeaders }
    static var 章节脚注: 固定滚动视图 { .sectionFooters }
}

extension LazyHStack {
    init(对齐: VerticalAlignment = .center,
         间距: CGFloat? = nil,
         固定视图: 固定滚动视图 = [],
         @ViewBuilder 内容: () -> Content) {
        self.init(alignment: 对齐, spacing: 间距, pinnedViews: 固定视图, content: 内容)
    }
}

extension RoundedRectangle {
    init(圆角: CGFloat, 样式: RoundedCornerStyle = .circular) {
        self.init(cornerRadius: 圆角, style: 样式)
    }
}

extension Axis.Set {
    static var 水平: Axis.Set { .horizontal }
    static var 垂直: Axis.Set { .vertical }
}
