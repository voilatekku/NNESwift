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
        列表 {
            Text("Apple")
            Text("Banana")
            Text("Orange")
        }
        .导航标题("简单列表")
    }
}

#Preview {
    例子视图()
}
