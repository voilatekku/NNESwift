//
//  TryExample.swift
//  NonEnglishSwift
//
//  Created by Yinhong Ma on 2025/11/26.
//
import SwiftUI

// MARK: - Chinese usage sample

struct 例子视图: 中文视图 {
    @State private var isAnimating = false

    var 视图主体: some 视图 {
        Circle()
            .裁剪(起点: 0, 终点: 0.75)
            .stroke(Color.blue, lineWidth: 4)
            .frame(width: 40, height: 40)
            .rotationEffect(.degrees(isAnimating ? 360 : 0))
            .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isAnimating)
            .onAppear {
                isAnimating = true
            }
    }
}

#Preview {
    例子视图()
}
