//
//  WelcomeView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showLogin: Bool = false
    @State private var showSignUp: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                // White background as in Figma design
                Color.white
                    .ignoresSafeArea()
                
                ZStack {
                    // Log In Button
                    Button(action: {
                        showLogin = true
                    }) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 207, height: 45)
                            .background(AppTheme.primaryButton)
                            .cornerRadius(30)
                            .overlay(
                                Text("Log In")
                                    .font(Font.custom("League Spartan", size: 24).weight(.medium))
                                    .foregroundColor(AppTheme.buttonText)
                            )
                    }
                    .offset(x: 5.50, y: 258.50)
                    
                    // Sign Up Button
                    Button(action: {
                        showSignUp = true
                    }) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 207, height: 45)
                            .background(AppTheme.primaryButton.opacity(0.2))
                            .cornerRadius(30)
                            .overlay(
                                Text("Sign Up")
                                    .font(Font.custom("League Spartan", size: 24).weight(.medium))
                                    .foregroundColor(AppTheme.primaryButton)
                            )
                    }
                    .offset(x: 5.50, y: 310.50)
                    
                    // Description Text
                    Text("Secure authentication made simple with SmartBadge. Connect, verify, and access your digital world seamlessly.")
                        .font(Font.custom("League Spartan", size: 12).weight(.light))
                        .foregroundColor(AppTheme.darkText)
                        .multilineTextAlignment(.center)
                        .frame(width: 300)
                        .offset(x: 5.50, y: 195)
                    
                    Text("Provide Real Value")
                        .font(Font.custom("League Spartan", size: 12).weight(.semibold))
                        .foregroundColor(AppTheme.darkText)
                        .offset(x: 3, y: 53)
                    
                    Text("SalesTag")
                        .font(Font.custom("League Spartan", size: 48).weight(.ultraLight))
                        .foregroundColor(AppTheme.primaryButton.opacity(0.8))
                        .offset(x: 0, y: -27)
                    
                    Text("LOGO")
                        .font(Font.custom("League Spartan", size: 48).weight(.bold))
                        .foregroundColor(AppTheme.primaryButton)
                        .offset(x: 3, y: -146)
                }
                .frame(width: 360, height: 800)
            }
            .navigationDestination(isPresented: $showLogin) {
                LoginView()
            }
            .navigationDestination(isPresented: $showSignUp) {
                SignUpView()
            }
        }
    }
}

#Preview {
    WelcomeView()
}
