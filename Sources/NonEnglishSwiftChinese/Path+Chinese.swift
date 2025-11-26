import SwiftUI

extension Path {
    init(矩形: CGRect) {
        self.init(矩形)
    }

    init(椭圆: CGRect) {
        self.init(ellipseIn: 椭圆)
    }

    init(圆角矩形: CGRect, 圆角尺寸: CGSize, 样式: RoundedCornerStyle = .circular) {
        self.init(roundedRect: 圆角矩形, cornerSize: 圆角尺寸, style: 样式)
    }

    mutating func 移动到(_ 目标: CGPoint) {
        move(to: 目标)
    }

    mutating func 添加直线(到 终点: CGPoint) {
        addLine(to: 终点)
    }

    mutating func 添加折线(经过 点集: [CGPoint]) {
        addLines(点集)
    }

    mutating func 添加二次曲线(到 终点: CGPoint, 控制点: CGPoint) {
        addQuadCurve(to: 终点, control: 控制点)
    }

    mutating func 添加三次曲线(到 终点: CGPoint, 控制点1: CGPoint, 控制点2: CGPoint) {
        addCurve(to: 终点, control1: 控制点1, control2: 控制点2)
    }

    mutating func 添加弧线(中心: CGPoint, 半径: CGFloat, 起始角度: Angle, 结束角度: Angle, 顺时针: Bool) {
        addArc(center: 中心, radius: 半径, startAngle: 起始角度, endAngle: 结束角度, clockwise: 顺时针)
    }

    mutating func 添加相对弧(中心: CGPoint, 半径: CGFloat, 起始角度: Angle, 角度增量: Angle) {
        addRelativeArc(center: 中心, radius: 半径, startAngle: 起始角度, delta: 角度增量)
    }

    mutating func 添加切线弧(第一切点: CGPoint, 第二切点: CGPoint, 半径: CGFloat) {
        addArc(tangent1End: 第一切点, tangent2End: 第二切点, radius: 半径)
    }

    mutating func 添加椭圆(在 矩形: CGRect, 变换: CGAffineTransform = .identity) {
        addEllipse(in: 矩形, transform: 变换)
    }

    mutating func 添加矩形(在 矩形: CGRect, 变换: CGAffineTransform = .identity) {
        addRect(矩形, transform: 变换)
    }

    mutating func 添加圆角矩形(在 矩形: CGRect, 圆角尺寸: CGSize, 样式: RoundedCornerStyle = .circular) {
        addRoundedRect(in: 矩形, cornerSize: 圆角尺寸, style: 样式)
    }

    mutating func 添加路径(_ 路径: Path, 变换: CGAffineTransform = .identity) {
        addPath(路径, transform: 变换)
    }

    mutating func 关闭子路径() {
        closeSubpath()
    }
}
