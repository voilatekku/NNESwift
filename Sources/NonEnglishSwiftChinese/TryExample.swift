//
//  TryExample.swift
//  NonEnglishSwift
//
//  Created by Yinhong Ma on 2025/11/26.
//
import SwiftUI

// MARK: - Chinese usage sample

struct 例子视图: 中文视图 {

    var 视图主体: some 视图 {
        路径 { 径 in
            // 起点
            径.移动到(CG点(x: 20, y: 20))
            // 终点
            径.移动到(CG点(x: 200, y: 120))
        }
        .stroke(.blue, style: StrokeStyle(lineWidth: 3, lineCap: .round))
        .frame(width: 220, height: 140)
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .padding()
    }
}

#Preview {
    例子视图()
}

