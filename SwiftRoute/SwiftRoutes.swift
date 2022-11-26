//
//  SwiftRoutes.swift
//  SwiftRoute
//
//  Created by Matt on 2022/11/25.
//

import SwiftUI

public class RouteConfig: ObservableObject {
    @Published var path = "home"
}

public struct SwiftRoutes<Contents: View>: View {
    private var config: RouteConfig
    private let contents: Contents
    
    init(_ config: RouteConfig, @ViewBuilder contents: () -> Contents) {
        self.config = config
        self.contents = contents()
    }

    public var body: some View {
        contents
            .environmentObject(config)
    }
}
