import SwiftUI

func 动画<Result>(_ 动画: Animation? = .default, 执行 body: () -> Result) -> Result {
    withAnimation(动画, body)
}

extension Animation {
    static var 默认: Animation { .default }

    static func 线性(持续时间: Double) -> Animation {
        .linear(duration: 持续时间)
    }

    static func 缓入(持续时间: Double) -> Animation {
        .easeIn(duration: 持续时间)
    }

    static func 缓出(持续时间: Double) -> Animation {
        .easeOut(duration: 持续时间)
    }

    static func 缓入缓出(持续时间: Double) -> Animation {
        .easeInOut(duration: 持续时间)
    }

    static func 弹簧(响应: Double = 0.55, 阻尼: Double = 0.825, 混合持续时间: Double = 0) -> Animation {
        .spring(response: 响应, dampingFraction: 阻尼, blendDuration: 混合持续时间)
    }

    static func 插值弹簧(刚度: Double, 阻尼: Double, 初始速度: Double = 0) -> Animation {
        .interpolatingSpring(stiffness: 刚度, damping: 阻尼, initialVelocity: 初始速度)
    }

    static func 交互式弹簧(响应: Double = 0.55, 阻尼: Double = 0.825, 混合持续时间: Double = 0) -> Animation {
        .interactiveSpring(response: 响应, dampingFraction: 阻尼, blendDuration: 混合持续时间)
    }

    static func 计时曲线(控制点1X: Double, 控制点1Y: Double, 控制点2X: Double, 控制点2Y: Double, 持续时间: Double) -> Animation {
        .timingCurve(控制点1X, 控制点1Y, 控制点2X, 控制点2Y, duration: 持续时间)
    }
}
