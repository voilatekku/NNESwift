import SwiftUI

// MARK: - Chinese alias layer

typealias 垂直堆栈 = VStack
typealias 水平堆栈 = HStack
typealias 叠放堆栈 = ZStack
typealias 延迟垂直堆栈 = LazyVStack
typealias 延迟水平堆栈 = LazyHStack
typealias 间隔 = Spacer
typealias 滚动视图 = ScrollView
typealias 滚动视图读取器<内容: View> = ScrollViewReader<内容>
typealias 滚动视图代理 = ScrollViewProxy
typealias 圆角矩形 = RoundedRectangle
typealias 圆形 = Circle
typealias 遍历<数据, 标识符, 内容> = ForEach<数据, 标识符, 内容> where 数据: RandomAccessCollection, 标识符: Hashable, 内容: View
typealias 文本 = Text
typealias 图像 = Image
typealias 按钮 = Button
typealias 滑块 = Slider

// MARK: - Primitive types

typealias 整数 = Int
typealias 无符号整数 = UInt
typealias 单精度浮点 = Float
typealias 双精度浮点 = Double
typealias 布尔 = Bool
typealias 字符串 = String
typealias 字符 = Character
typealias 核心浮点 = CGFloat
typealias 绑定<Value> = Binding<Value>

typealias 颜色 = Color
typealias 固定滚动视图 = PinnedScrollableViews
typealias 分隔线 = Divider
typealias 矩形 = Rectangle
typealias 三维轴 = (x: CGFloat, y: CGFloat, z: CGFloat)
typealias 单位点 = UnitPoint
typealias CG点 = CGPoint
typealias 路径 = Path
