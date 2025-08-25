//
//  SignUpView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct SignUpView: View {
    @State private var name: String = ""
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
                
                ScrollView {
                    VStack(spacing: 30) {
                        // Header Section
                        VStack(spacing: 15) {
                            Text("New Account")
                                .font(Font.custom("League Spartan", size: 24).weight(.semibold))
                                .foregroundColor(Color(red: 0.13, green: 0.38, blue: 1))
                        }
                        .padding(.top, 20)
                        
                        // Form Section
                        VStack(spacing: 20) {
                            // Full Name Field
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Full name")
                                    .font(Font.custom("League Spartan", size: 20).weight(.medium))
                                    .foregroundColor(.black)
                                
                                TextField("Enter your full name", text: $name)
                                    .font(Font.custom("League Spartan", size: 20))
                                    .foregroundColor(Color(red: 0.50, green: 0.61, blue: 1))
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 12)
                                    .background(Color(red: 0.93, green: 0.95, blue: 1))
                                    .cornerRadius(13)
                            }
                            
                            // Password Field
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Password")
                                    .font(Font.custom("League Spartan", size: 20).weight(.medium))
                                    .foregroundColor(.black)
                                
                                SecureField("Enter your password", text: $password)
                                    .font(Font.custom("League Spartan", size: 20))
                                    .foregroundColor(Color(red: 0.50, green: 0.61, blue: 1))
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 12)
                                    .background(Color(red: 0.93, green: 0.95, blue: 1))
                                    .cornerRadius(13)
                            }
                            
                            // Email Field
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Email")
                                    .font(Font.custom("League Spartan", size: 20).weight(.medium))
                                    .foregroundColor(.black)
                                
                                TextField("example@example.com", text: $email)
                                    .font(Font.custom("League Spartan", size: 20))
                                    .foregroundColor(Color(red: 0.50, green: 0.61, blue: 1))
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 12)
                                    .background(Color(red: 0.93, green: 0.95, blue: 1))
                                    .cornerRadius(13)
                            }
                        }
                        .padding(.horizontal, 30)
                        
                        // Sign Up Button
                        Button(action: {
                            handleSignUp()
                        }) {
                            ZStack {
                                if isLoading {
                                    ProgressView()
                                        .tint(.white)
                                } else {
                                    Text("Sign Up")
                                        .font(Font.custom("League Spartan", size: 24).weight(.medium))
                                        .foregroundColor(.white)
                                }
                            }
                            .frame(width: 207, height: 45)
                            .background(Color(red: 0.13, green: 0.38, blue: 1))
                            .cornerRadius(30)
                        }
                        .disabled(isLoading)
                        
                        // Social Sign Up Section
                        VStack(spacing: 15) {
                            Text("or sign up with")
                                .font(Font.custom("League Spartan", size: 12).weight(.light))
                                .foregroundColor(.black)
                            
                            HStack(spacing: 20) {
                                // Social buttons
                                ForEach(0..<3) { _ in
                                    Button(action: {
                                        // Handle social sign up
                                    }) {
                                        Circle()
                                            .fill(Color(red: 0.79, green: 0.84, blue: 1))
                                            .frame(width: 40, height: 40)
                                    }
                                }
                            }
                        }
                        
                        Spacer(minLength: 50)
                        
                        // Login Link
                        Button(action: {
                            dismiss()
                        }) {
                            Text("Already have an account? Log In")
                                .font(Font.custom("League Spartan", size: 12).weight(.light))
                                .foregroundColor(.black)
                        }
                        .padding(.bottom, 30)
                    }
                }
            }
            .navigationBarHidden(true)
            .fullScreenCover(isPresented: $showHome) {
                Text("Home View Placeholder")
            }
        }
    }
    
    // MARK: - Helper Functions
    private func handleSignUp() {
        isLoading = true
        
        // Simulate sign up delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            isLoading = false
            showHome = true
        }
    }
}

#Preview {
    SignUpView()
}
