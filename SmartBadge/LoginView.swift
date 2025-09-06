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
        VStack(spacing: 0) {
            // Header with logo and welcome text
            VStack(alignment: .leading, spacing: 16) {
                // Logo and app name
                HStack(spacing: 12) {
                    // App icon in orange square
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 40, height: 40)
                            .background(Color(red: 1, green: 0.34, blue: 0.08))
                            .cornerRadius(8)
                        
                        // App icon placeholder
                        Image(systemName: "waveform")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    Text("SalesTag")
                        .font(Font.custom("Rubik", size: 24).weight(.semibold))
                        .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                }
                
                Text("Welcome back! Please sign in to your account.")
                    .font(Font.custom("Rubik", size: 14))
                    .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            // Main form content
            ScrollView {
                VStack(spacing: 24) {
                    // Input fields
                    VStack(spacing: 16) {
                        // Email Field
                        TextField("Email", text: $email)
                            .font(Font.custom("Inter", size: 16))
                            .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
                            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                            .frame(height: 48)
                            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                            .cornerRadius(8)
                        
                        // Password Field
                        VStack(spacing: 8) {
                            SecureField("Password", text: $password)
                                .font(Font.custom("Inter", size: 16))
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
                                        .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
                                }
                            }
                        }
                    }
                    
                    // Login Button
                    Button(action: {
                        handleLogin()
                    }) {
                        Text("Login")
                            .font(Font.custom("Rubik", size: 16).weight(.medium))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                            .frame(height: 48)
                            .background(Color(red: 1, green: 0.34, blue: 0.08))
                            .cornerRadius(8)
                    }
                
                    // Divider with "Or"
                    HStack(spacing: 16) {
                        Rectangle()
                            .frame(height: 1)
                            .background(Color(red: 0.92, green: 0.92, blue: 0.92))
                        
                        Text("Or")
                            .font(Font.custom("Rubik", size: 14))
                            .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                        
                        Rectangle()
                            .frame(height: 1)
                            .background(Color(red: 0.92, green: 0.92, blue: 0.92))
                    }
                    
                    // Social login options
                    VStack(spacing: 12) {
                        // Google Sign Up
                        Button(action: {
                            // Handle Google sign up
                        }) {
                            Text("Sign Up with Google")
                                .font(Font.custom("Rubik", size: 16))
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .frame(maxWidth: .infinity)
                                .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                                .frame(height: 48)
                                .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color(red: 0.92, green: 0.92, blue: 0.92), lineWidth: 1)
                                )
                                .cornerRadius(8)
                        }
                        
                        // Apple Sign Up
                        Button(action: {
                            // Handle Apple sign up
                        }) {
                            Text("Sign Up with Apple")
                                .font(Font.custom("Rubik", size: 16))
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .frame(maxWidth: .infinity)
                                .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                                .frame(height: 48)
                                .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color(red: 0.92, green: 0.92, blue: 0.92), lineWidth: 1)
                                )
                                .cornerRadius(8)
                        }
                    }
                    
                    // Continue as guest
                    Button(action: {
                        showDashboard = true
                    }) {
                        Text("Continue as a guest")
                            .font(Font.custom("Rubik", size: 16).weight(.medium))
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                    }
                    
                    // Sign Up link
                    Button(action: {
                        showSignUp = true
                    }) {
                        Text("Don't have an account? Sign Up")
                            .font(Font.custom("Rubik", size: 16).weight(.medium))
                            .foregroundColor(Color(red: 1, green: 0.34, blue: 0.08))
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 32)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
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
