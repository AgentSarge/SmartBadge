//
//  SplashView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct SplashView: View {
    @State private var showWelcome: Bool = false
    @State private var scale: CGFloat = 0.5
    @State private var opacity: Double = 0.0
    
    var body: some View {
        ZStack {
            // Background using theme colors instead of hard-coded blue
            AppTheme.primaryGradient
                .ignoresSafeArea()
            
            ZStack {
                Text("Provide Real Value")
                    .font(Font.custom("League Spartan", size: 12).weight(.semibold))
                    .foregroundColor(AppTheme.primaryText)
                    .offset(x: 5, y: 153)
                    .opacity(opacity)
                
                Text("SalesTag")
                    .font(Font.custom("League Spartan", size: 48).weight(.ultraLight))
                    .foregroundColor(AppTheme.primaryText)
                    .offset(x: 5, y: 75)
                    .opacity(opacity)
                
                Text("LOGO")
                    .font(Font.custom("League Spartan", size: 48).weight(.bold))
                    .foregroundColor(AppTheme.primaryText)
                    .offset(x: 0, y: -27)
                    .scaleEffect(scale)
                    .opacity(opacity)
            }
            .frame(width: 360, height: 800)
        }
        .onAppear {
            withAnimation(.easeIn(duration: 1.0)) {
                scale = 1.0
                opacity = 1.0
            }
            
            // Navigate to welcome screen after 2 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                showWelcome = true
            }
        }
        .fullScreenCover(isPresented: $showWelcome) {
            WelcomeView()
        }
    }
}

#Preview {
    SplashView()
}
