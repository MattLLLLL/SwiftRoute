//
//  Route.swift
//  SwiftRoute
//
//  Created by Matt on 2022/11/25.
//

import SwiftUI

public struct Route<Content: View>: View {
    private let path: String
    private let content: Content
    @EnvironmentObject var config: RouteConfig
    
    init(_ path: String, content: () -> Content) {
        self.path = path
        self.content = content()
    }
    
    public var body: some View {
        if (config.path == self.path) {
            content
        }
    }
}
