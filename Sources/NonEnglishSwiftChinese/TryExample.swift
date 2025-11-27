//
//  TryExample.swift
//  NonEnglishSwift
//
//  Created by Yinhong Ma on 2025/11/26.
//
import SwiftUI

// MARK: - Chinese usage sample

struct 例子视图: 中文视图 {
    @State private var animate = false

    var 视图主体: some 视图 {
        Circle()
            .裁剪(起点: 0.2, 终点: 1)
            .描边(
                角度渐变(
                    渐变: 渐变(颜色: [.red, .yellow, .green, .blue]),
                    中心: .居中
                ),
                样式: 描边样式(线宽: 5, 线帽: .圆头)
            )
            .框架(宽度: 50, 高度: 50)
            .旋转(.度(animate ? 360 : 0))
            .动画(
                .线性(持续时间: 1).无限重复(自动逆转: false),
                值: animate
            )
            .onAppear {
                animate = true
            }
    }
}

#Preview {
    例子视图()
}
