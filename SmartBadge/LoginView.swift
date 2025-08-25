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
    @State private var showHome: Bool = false
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack {
                // White background
                Color.white
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    // Main Content
                    VStack(spacing: 30) {
                        // Header Section
                        VStack(spacing: 15) {
                            Text("Log In")
                                .font(Font.custom("League Spartan", size: 24).weight(.semibold))
                                .foregroundColor(Color(red: 0.13, green: 0.38, blue: 1))
                            
                            HStack {
                                Text("Welcome")
                                    .font(Font.custom("League Spartan", size: 24).weight(.semibold))
                                    .foregroundColor(Color(red: 0.13, green: 0.38, blue: 1))
                                Spacer()
                            }
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                                .font(Font.custom("League Spartan", size: 12).weight(.light))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.horizontal, 30)
                        
                        // Form Section
                        VStack(spacing: 20) {
                            // Email Field
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Email or Mobile Number")
                                    .font(Font.custom("League Spartan", size: 20).weight(.medium))
                                    .foregroundColor(.black)
                                
                                TextField("example@example.com", text: $email)
                                    .font(Font.custom("League Spartan", size: 20))
                                    .foregroundColor(Color(red: 0.50, green: 0.61, blue: 1))
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 12)
                                    .background(Color(red: 0.93, green: 0.95, blue: 1))
                                    .cornerRadius(13)
                                    .keyboardType(.emailAddress)
                                    .autocapitalization(.none)
                            }
                            
                            // Password Field
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Password")
                                    .font(Font.custom("League Spartan", size: 20).weight(.medium))
                                    .foregroundColor(.black)
                                
                                SecureField("*************", text: $password)
                                    .font(Font.custom("League Spartan", size: 20))
                                    .foregroundColor(Color(red: 0.50, green: 0.61, blue: 1))
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 12)
                                    .background(Color(red: 0.93, green: 0.95, blue: 1))
                                    .cornerRadius(13)
                            }
                            
                            // Forgot Password
                            HStack {
                                Spacer()
                                Button(action: {
                                    // Handle forgot password
                                }) {
                                    Text("Forget Password")
                                        .font(Font.custom("League Spartan", size: 12).weight(.medium))
                                        .foregroundColor(Color(red: 0.13, green: 0.38, blue: 1))
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
                                    Text("Log In")
                                        .font(Font.custom("League Spartan", size: 24).weight(.medium))
                                        .foregroundColor(.white)
                                }
                            }
                            .frame(width: 207, height: 45)
                            .background(Color(red: 0.13, green: 0.38, blue: 1))
                            .cornerRadius(30)
                        }
                        .disabled(isLoading)
                        
                        // Social Login Section
                        VStack(spacing: 15) {
                            Text("or sign up with")
                                .font(Font.custom("League Spartan", size: 12).weight(.light))
                                .foregroundColor(.black)
                            
                            HStack(spacing: 20) {
                                // Left social button
                                Button(action: {
                                    // Handle social login
                                }) {
                                    Circle()
                                        .fill(Color(red: 0.79, green: 0.84, blue: 1))
                                        .frame(width: 40, height: 40)
                                }
                                
                                // Center social button with special styling
                                Button(action: {
                                    // Handle social login
                                }) {
                                    ZStack {
                                        Circle()
                                            .fill(Color(red: 0.79, green: 0.84, blue: 1))
                                            .frame(width: 40, height: 40)
                                        
                                        Circle()
                                            .stroke(Color(red: 0.13, green: 0.38, blue: 1), lineWidth: 1)
                                            .frame(width: 24, height: 24)
                                    }
                                }
                                
                                // Right social button
                                Button(action: {
                                    // Handle social login
                                }) {
                                    Circle()
                                        .fill(Color(red: 0.79, green: 0.84, blue: 1))
                                        .frame(width: 40, height: 40)
                                }
                            }
                        }
                        
                        Spacer()
                        
                        // Sign Up Link
                        Button(action: {
                            dismiss()
                        }) {
                            Text("Don't have an account? Sign Up")
                                .font(Font.custom("League Spartan", size: 12).weight(.light))
                                .foregroundColor(.black)
                        }
                        .padding(.bottom, 30)
                    }
                    .padding(.top, 20)
                }
            }
            .navigationBarHidden(true)
            .fullScreenCover(isPresented: $showHome) {
                HomeView()
            }
        }
    }
    
    // MARK: - Helper Functions
    private func handleLogin() {
        isLoading = true
        
        // Simulate login delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            isLoading = false
            showHome = true
        }
    }
}

// MARK: - Component Views

#Preview {
    LoginView()
}