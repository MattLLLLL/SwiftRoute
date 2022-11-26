//
//  ContentView.swift
//  SwiftRoute
//
//  Created by Matt on 2022/11/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var routeConfig = RouteConfig()
    var body: some View {
        SwiftRoutes(routeConfig) {
            Route("home") {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, world!!!")
                    Button {
                        routeConfig.path = "userInfo"
                    } label: {
                        Text("Click")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.yellow)
            }
            Route("userInfo") {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.red)
                    Text("Hello, Matt!!!")
                    Button {
                        routeConfig.path = "home"
                    } label: {
                        Text("Click")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
