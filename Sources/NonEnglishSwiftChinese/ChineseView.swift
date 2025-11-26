import SwiftUI

/// A SwiftUI-compatible view that prefers Chinese terminology for the view body.
///
/// Conforming types provide `视图主体`, which is forwarded to the `body`
/// requirement coming from `View`.
public typealias 视图 = View

public protocol 中文视图: 视图 {
    associatedtype 视图主体类型: 视图

    @ViewBuilder var 视图主体: 视图主体类型 { get }
}

public extension 中文视图 {
    var body: some 视图 {
        视图主体
    }
}
