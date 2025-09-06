//
//  WelcomeView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showLogin = false
    
    var body: some View {
        ZStack {
            // White background
            Color.white
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Top section with title
                VStack(spacing: 20) {
                    // SalesTag title
                    Text("SalesTag")
                        .font(Font.custom("Rubik", size: 34.12).weight(.medium))
                        .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        .padding(.top, 50)
                    
                    // Subtitle
                    Text("A new way to improve your sales")
                        .font(Font.custom("Rubik", size: 16))
                        .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                }
                
                Spacer()
                
                // Middle section with dark rectangle and icon
                VStack(spacing: 20) {
                    // Dark rectangle
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                            .frame(width: 390, height: 320)
                            .cornerRadius(32)
                        
                        // Orange icon in center
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
                                .frame(width: 80, height: 80)
                                .cornerRadius(19)
                        }
                        .frame(width: 80, height: 80)
                        .background(Color(red: 1, green: 0.34, blue: 0.08))
                        .cornerRadius(18.12)
                    }
                }
                
                Spacer()
                
                // Bottom section with Get Started button
                VStack {
                    Button(action: {
                        showLogin = true
                    }) {
                        Text("GET STARTED")
                            .font(Font.custom("Rubik", size: 14).weight(.medium))
                            .tracking(0.25)
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                            .frame(height: 48)
                            .background(Color(red: 1, green: 0.34, blue: 0.08))
                            .cornerRadius(12)
                    }
                }
                .padding(.bottom, 50)
            }
        }
        .frame(width: 390, height: 844)
        .fullScreenCover(isPresented: $showLogin) {
            LoginView()
        }
    }
}

#Preview {
    WelcomeView()
}
