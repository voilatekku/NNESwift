//
//  TryExample.swift
//  NonEnglishSwift
//
//  Created by Yinhong Ma on 2025/11/26.
//
import SwiftUI

// MARK: - Chinese usage sample

struct 例子视图: 中文视图 {
    @State private var rotate = false

    var 视图主体: some 视图 {
        HStack(spacing: 8) {
            ForEach(0..<3) { index in
                Circle()
                    .frame(width: 12, height: 12)
                    .scaleEffect(rotate ? 1 : 0.5)
                    .animation(
                        .easeInOut(duration: 0.6)
                            .repeatForever()
                            .delay(Double(index) * 0.2),
                        value: rotate
                    )
            }
        }
        .onAppear {
            rotate = true
        }
    }
}

#Preview {
    例子视图()
}
