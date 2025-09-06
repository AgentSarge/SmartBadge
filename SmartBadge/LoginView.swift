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
    @State private var showSignUp = false
    @State private var showRecoverPassword = false
    @State private var showDashboard = false
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            // White background
            Color.white
                .ignoresSafeArea()
            
            // Top header with logo and title
            VStack(alignment: .leading, spacing: 32) {
                // Logo and app name
                HStack(spacing: 12) {
                    // App icon in orange square
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 48, height: 48)
                            .background(Color(red: 1, green: 0.34, blue: 0.08))
                            .cornerRadius(12)
                        
                        // App icon placeholder - you can replace this with actual app icon
                        Image(systemName: "waveform")
                            .font(.system(size: 24, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    Text("SalesTag")
                        .font(Font.custom("Rubik", size: 28).weight(.semibold))
                        .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Sign In")
                        .font(Font.custom("Rubik", size: 24).weight(.semibold))
                        .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                    
                    Text("Welcome back! Please sign in to your account.")
                        .font(Font.custom("Rubik", size: 14))
                        .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
            .offset(x: 0, y: -280)
            
            // Main form content
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 20) {
                        // Email Field
                        VStack(alignment: .leading, spacing: 8) {
                            TextField("Email", text: $email)
                                .font(Font.custom("Inter", size: 16))
                                .tracking(0.50)
                                .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
                                .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                                .frame(height: 48)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .cornerRadius(8)
                        }
                        
                        // Password Field
                        VStack(alignment: .leading, spacing: 8) {
                            SecureField("Password", text: $password)
                                .font(Font.custom("Inter", size: 16))
                                .tracking(0.50)
                                .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
                                .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                                .frame(height: 48)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .cornerRadius(8)
                            
                            // Forgot Password link
                            HStack {
                                Spacer()
                                Button(action: {
                                    showRecoverPassword = true
                                }) {
                                    Text("Forgot Password?")
                                        .font(Font.custom("Rubik", size: 12))
                                        .tracking(0.40)
                                        .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
                                }
                            }
                            .padding(.top, 4)
                        }
                    }
                    
                    // Login Button
                    Button(action: {
                        handleLogin()
                    }) {
                        Text("Login")
                            .font(Font.custom("Rubik", size: 16).weight(.medium))
                            .tracking(0.25)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                            .frame(height: 48)
                            .background(Color(red: 1, green: 0.34, blue: 0.08))
                            .cornerRadius(12)
                    }
                
                    // Divider with "Or"
                    HStack(spacing: 16) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(height: 1)
                            .background(Color(red: 0.92, green: 0.92, blue: 0.92))
                        
                        Text("Or")
                            .font(Font.custom("Rubik", size: 14))
                            .tracking(0.25)
                            .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(height: 1)
                            .background(Color(red: 0.92, green: 0.92, blue: 0.92))
                    }
                    .padding(.horizontal, 16)
                    
                    // Social login options
                    VStack(spacing: 16) {
                        // Google Sign Up
                        Button(action: {
                            // Handle Google sign up
                        }) {
                            HStack {
                                Text("Sign Up with Google")
                                    .font(Font.custom("Rubik", size: 16))
                                    .tracking(0.25)
                                    .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                            .frame(height: 48)
                            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                            .cornerRadius(12)
                        }
                        
                        // Apple Sign Up
                        Button(action: {
                            // Handle Apple sign up
                        }) {
                            HStack {
                                Text("Sign Up with Apple")
                                    .font(Font.custom("Rubik", size: 16))
                                    .tracking(0.25)
                                    .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                            .frame(height: 48)
                            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                            .cornerRadius(12)
                        }
                    }
                    
                    // Continue as guest
                    Button(action: {
                        showDashboard = true
                    }) {
                        Text("Continue as a guest")
                            .font(Font.custom("Rubik", size: 16).weight(.medium))
                            .tracking(0.25)
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                            .frame(maxWidth: .infinity)
                            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                            .frame(height: 48)
                    }
                    
                    // Sign Up link
                    Button(action: {
                        showSignUp = true
                    }) {
                        Text("Don't have an account? Sign Up")
                            .font(Font.custom("Rubik", size: 16).weight(.medium))
                            .tracking(0.25)
                            .foregroundColor(Color(red: 1, green: 0.34, blue: 0.08))
                            .frame(maxWidth: .infinity)
                            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                            .frame(height: 48)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 20)
            }
            .offset(x: 0, y: 60)
        }
        .frame(width: 390, height: 844)
        .background(.white)
        .fullScreenCover(isPresented: $showSignUp) {
            SignUpView()
        }
        .fullScreenCover(isPresented: $showRecoverPassword) {
            RecoverPasswordView()
        }
        .fullScreenCover(isPresented: $showDashboard) {
            DashboardView()
        }
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
