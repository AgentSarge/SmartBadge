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
    @State private var isLoading: Bool = false
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack {
                // White background
                Color.white
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 30) {
                        // Header Section
                        VStack(spacing: 15) {
                            Text("Welcome Back")
                                .font(Font.custom("Rubik", size: 24).weight(.semibold))
                                .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                            
                            Text("Sign in to continue")
                                .font(Font.custom("Rubik", size: 16))
                                .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06).opacity(0.7))
                        }
                        .padding(.top, 50)
                        
                        // Form Section
                        VStack(spacing: 20) {
                            // Email Field
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Email")
                                    .font(Font.custom("Rubik", size: 16).weight(.medium))
                                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                                
                                TextField("Enter your email", text: $email)
                                    .font(Font.custom("Rubik", size: 16))
                                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 12)
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(12)
                            }
                            
                            // Password Field
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Password")
                                    .font(Font.custom("Rubik", size: 16).weight(.medium))
                                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                                
                                SecureField("Enter your password", text: $password)
                                    .font(Font.custom("Rubik", size: 16))
                                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 12)
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(12)
                            }
                            
                            // Forgot Password
                            HStack {
                                Spacer()
                                Button(action: {
                                    // Handle forgot password
                                }) {
                                    Text("Forgot Password?")
                                        .font(Font.custom("Rubik", size: 14))
                                        .foregroundColor(Color(red: 1, green: 0.34, blue: 0.08))
                                }
                            }
                        }
                        .padding(.horizontal, 30)
                        
                        // Login Button
                        Button(action: {
                            handleLogin()
                        }) {
                            ZStack {
                                if isLoading {
                                    ProgressView()
                                        .tint(.white)
                                } else {
                                    Text("Sign In")
                                        .font(Font.custom("Rubik", size: 16).weight(.medium))
                                        .foregroundColor(.white)
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 48)
                            .background(Color(red: 1, green: 0.34, blue: 0.08))
                            .cornerRadius(12)
                        }
                        .disabled(isLoading)
                        .padding(.horizontal, 30)
                        
                        // Sign Up Link
                        HStack {
                            Text("Don't have an account?")
                                .font(Font.custom("Rubik", size: 14))
                                .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06).opacity(0.7))
                            
                            Button(action: {
                                // Handle sign up
                            }) {
                                Text("Sign Up")
                                    .font(Font.custom("Rubik", size: 14).weight(.medium))
                                    .foregroundColor(Color(red: 1, green: 0.34, blue: 0.08))
                            }
                        }
                        .padding(.top, 20)
                        
                        Spacer(minLength: 50)
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    // MARK: - Helper Functions
    private func handleLogin() {
        isLoading = true
        
        // Simulate login delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            isLoading = false
            dismiss()
        }
    }
}

#Preview {
    LoginView()
}
