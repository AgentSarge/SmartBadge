//
//  SetPasswordView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct SetPasswordView: View {
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
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
                            HStack {
                                Button(action: {
                                    dismiss()
                                }) {
                                    Image(systemName: "chevron.left")
                                        .foregroundColor(Color(red: 0.13, green: 0.38, blue: 1))
                                        .font(.system(size: 18, weight: .medium))
                                }
                                
                                Spacer()
                            }
                            
                            Text("Set Password")
                                .font(Font.custom("League Spartan", size: 24).weight(.semibold))
                                .foregroundColor(Color(red: 0.13, green: 0.38, blue: 1))
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                                .font(Font.custom("League Spartan", size: 12).weight(.light))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 20)
                        }
                        .padding(.top, 20)
                        
                        // Form Section
                        VStack(spacing: 20) {
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
                            
                            // Confirm Password Field
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Confirm Password")
                                    .font(Font.custom("League Spartan", size: 20).weight(.medium))
                                    .foregroundColor(.black)
                                
                                SecureField("Confirm your password", text: $confirmPassword)
                                    .font(Font.custom("League Spartan", size: 20))
                                    .foregroundColor(Color(red: 0.50, green: 0.61, blue: 1))
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 12)
                                    .background(Color(red: 0.93, green: 0.95, blue: 1))
                                    .cornerRadius(13)
                            }
                        }
                        .padding(.horizontal, 30)
                        
                        // Create Password Button
                        Button(action: {
                            handleCreatePassword()
                        }) {
                            ZStack {
                                if isLoading {
                                    ProgressView()
                                        .tint(.white)
                                } else {
                                    Text("Create Password")
                                        .font(Font.custom("League Spartan", size: 24).weight(.medium))
                                        .foregroundColor(.white)
                                }
                            }
                            .frame(width: 207, height: 45)
                            .background(Color(red: 0.13, green: 0.38, blue: 1))
                            .cornerRadius(30)
                        }
                        .disabled(isLoading)
                        
                        Spacer(minLength: 50)
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
    private func handleCreatePassword() {
        isLoading = true
        
        // Simulate password creation delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            isLoading = false
            showHome = true
        }
    }
}

#Preview {
    SetPasswordView()
}
