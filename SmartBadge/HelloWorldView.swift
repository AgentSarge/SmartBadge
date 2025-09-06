//
//  HelloWorldView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct HelloWorldView: View {
    var body: some View {
        VStack {
            Text("Hello World!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            Text("Welcome to SmartBadge")
                .font(.title2)
                .foregroundColor(.secondary)
                .padding(.top, 8)
        }
        .padding()
    }
}

#Preview {
    HelloWorldView()
}
