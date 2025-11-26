//
//  TryExample.swift
//  NonEnglishSwift
//
//  Created by Yinhong Ma on 2025/11/26.
//
import SwiftUI

// MARK: - Chinese usage sample

struct 例子视图: 中文视图 {
    @State private var scale: CGFloat = 1.0

    var 视图主体: some 视图 {
        VStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .scaleEffect(scale)
                .动画(.缓入缓出(持续时间: 1.0), 值: scale)

            Button("Animate") {
                scale = scale == 1.0 ? 1.8 : 1.0
            }
            .padding()
        }
    }
}

#Preview {
    例子视图()
}
