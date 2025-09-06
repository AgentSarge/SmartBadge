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
        VStack(spacing: 0) {
            // Top dark section
            ZStack {
                // Dark background
                Color.black
                    .ignoresSafeArea()
                
                VStack {
                    // Onboarding title
                    HStack {
                        Text("Onboarding")
                            .font(Font.custom("Rubik", size: 16).weight(.medium))
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                    Spacer()
                    
                    // Dark rectangle with orange icon
                    ZStack {
                        // Dark rectangle
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 350, height: 280)
                            .cornerRadius(24)
                            .overlay(
                                // Subtle reflection effect
                                Rectangle()
                                    .foregroundColor(.white.opacity(0.1))
                                    .frame(width: 350, height: 280)
                                    .cornerRadius(24)
                                    .offset(x: -10, y: -10)
                            )
                        
                        // Orange icon with soundwave
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 80, height: 80)
                                .background(Color(red: 1, green: 0.34, blue: 0.08))
                                .cornerRadius(16)
                            
                            // Soundwave icon
                            HStack(spacing: 3) {
                                Rectangle()
                                    .frame(width: 4, height: 12)
                                    .foregroundColor(.white)
                                Rectangle()
                                    .frame(width: 4, height: 20)
                                    .foregroundColor(.white)
                                Rectangle()
                                    .frame(width: 4, height: 12)
                                    .foregroundColor(.white)
                            }
                        }
                        .offset(y: 20) // Slightly overlapping the white section
                    }
                    
                    Spacer()
                }
            }
            .frame(height: 422) // Half of the screen
            
            // Bottom white section
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                VStack(spacing: 24) {
                    Spacer()
                    
                    // SalesTag branding
                    VStack(spacing: 12) {
                        HStack {
                            Text("SalesTag")
                                .font(Font.custom("Rubik", size: 32).weight(.bold))
                                .foregroundColor(.black)
                            
                            // Pink dot in the 'a'
                            Circle()
                                .frame(width: 8, height: 8)
                                .foregroundColor(Color(red: 1, green: 0.2, blue: 0.5))
                                .offset(x: -8, y: -2)
                        }
                        
                        Text("A new way to improve your sales")
                            .font(Font.custom("Rubik", size: 16))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                    }
                    
                    Spacer()
                    
                    // GET STARTED button
                    Button(action: {
                        showLogin = true
                    }) {
                        Text("GET STARTED")
                            .font(Font.custom("Rubik", size: 16).weight(.semibold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
                            .frame(height: 56)
                            .background(Color(red: 1, green: 0.34, blue: 0.08))
                            .cornerRadius(16)
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 40)
                }
            }
            .frame(height: 422) // Half of the screen
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
