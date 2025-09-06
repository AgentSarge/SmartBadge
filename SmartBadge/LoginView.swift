//
//  LoginView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            // White background
            Color.white
                .ignoresSafeArea()
            
            // Top header with logo and title
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 0.92) {
                    HStack(spacing: 6.82) {
                        ZStack {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 42, height: 42)
                                    .background(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
                                    .cornerRadius(19)
                                    .offset(x: 0.53, y: 0.53)
                            }
                            .frame(width: 40.94, height: 40.94)
                            .background(Color(red: 1, green: 0.34, blue: 0.08))
                            .cornerRadius(9.28)
                            .offset(x: -75.42, y: 0)
                            
                            ZStack {
                                Text("SalesTag")
                                    .font(Font.custom("Rubik", size: 34.12).weight(.medium))
                                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                                    .offset(x: 0, y: 0)
                            }
                            .frame(width: 144, height: 40)
                            .offset(x: 23.89, y: 0)
                        }
                        .frame(width: 191.77, height: 40.94)
                    }
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Sign In")
                        .font(Font.custom("Rubik", size: 20).weight(.medium))
                        .tracking(0.25)
                        .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                    
                    Text("Looks like you don't have an account. Let's create a new account for you.")
                        .font(Font.custom("Rubik", size: 14))
                        .lineSpacing(18)
                        .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
                }
            }
            .offset(x: 0, y: -271.53)
            
            // Main form content
            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 16) {
                        // Email Field
                        VStack(alignment: .leading, spacing: 8) {
                            VStack(alignment: .leading, spacing: 4) {
                                HStack(spacing: 8) {
                                    TextField("Email", text: $email)
                                        .font(Font.custom("Inter", size: 16))
                                        .tracking(0.50)
                                        .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
                                }
                                .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                                .frame(height: 48)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .cornerRadius(8)
                            }
                        }
                        .frame(width: 358)
                        
                        // Password Field
                        VStack(alignment: .leading, spacing: 8) {
                            VStack(alignment: .leading, spacing: 4) {
                                HStack(spacing: 8) {
                                    SecureField("Password", text: $password)
                                        .font(Font.custom("Inter", size: 16))
                                        .tracking(0.50)
                                        .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
                                }
                                .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                                .frame(height: 48)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .cornerRadius(8)
                            }
                        }
                        .frame(width: 358)
                    }
                    
                    // Login Button
                    VStack(alignment: .leading, spacing: 10) {
                        Button(action: {
                            handleLogin()
                        }) {
                            HStack(spacing: 4) {
                                Text("Login")
                                    .font(Font.custom("Rubik", size: 14).weight(.medium))
                                    .tracking(0.25)
                                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                            }
                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                            .frame(height: 48)
                            .background(Color(red: 1, green: 0.34, blue: 0.08))
                            .cornerRadius(12)
                        }
                    }
                    .frame(width: 358)
                }
                
                // Divider with "Or"
                HStack(spacing: 10) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(height: 0)
                        .overlay(
                            Rectangle()
                                .stroke(Color(red: 0.92, green: 0.92, blue: 0.92), lineWidth: 0.50)
                        )
                    
                    Text("Or")
                        .font(Font.custom("Rubik", size: 14))
                        .tracking(0.25)
                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(height: 0)
                        .overlay(
                            Rectangle()
                                .stroke(Color(red: 0.92, green: 0.92, blue: 0.92), lineWidth: 0.50)
                        )
                }
                .frame(width: 358)
                
                // Social login options
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 16) {
                        // Google Sign Up
                        Button(action: {
                            // Handle Google sign up
                        }) {
                            HStack(spacing: 40) {
                                Text("Sign Up with Google")
                                    .font(Font.custom("Rubik", size: 14))
                                    .tracking(0.25)
                                    .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                            }
                            .padding(16)
                            .frame(width: 358)
                            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                            .cornerRadius(12)
                        }
                        
                        // Apple Sign Up
                        Button(action: {
                            // Handle Apple sign up
                        }) {
                            HStack(spacing: 40) {
                                ZStack {
                                    // Apple icon placeholder
                                }
                                .frame(width: 24, height: 24)
                                
                                Text("Sign Up with Apple")
                                    .font(Font.custom("Rubik", size: 14))
                                    .tracking(0.25)
                                    .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                            }
                            .padding(16)
                            .frame(width: 358)
                            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                            .cornerRadius(12)
                        }
                    }
                    
                    // Continue as guest
                    VStack(alignment: .leading, spacing: 10) {
                        Button(action: {
                            // Handle guest login
                        }) {
                            HStack(spacing: 4) {
                                Text("Continue as a guest")
                                    .font(Font.custom("Rubik", size: 14).weight(.medium))
                                    .tracking(0.25)
                                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                            }
                            .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                            .frame(height: 48)
                            .cornerRadius(12)
                        }
                    }
                    .frame(width: 358)
                }
            }
            .offset(x: 0, y: 44)
        }
        .frame(width: 390, height: 844)
        .background(.white)
    }
    
    // MARK: - Helper Functions
    private func handleLogin() {
        // Handle login logic
        dismiss()
    }
}

#Preview {
    LoginView()
}
