//
//  ChangePasswordView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct ChangePasswordView: View {
    @State private var newPassword: String = ""
    @State private var confirmPassword: String = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            // White background
            Color.white
                .ignoresSafeArea()
            
            // Top header with logo
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
            .offset(x: -83.11, y: -321.53)
            
            // Title and description
            VStack(alignment: .leading, spacing: 12) {
                Text("Change Password")
                    .font(Font.custom("Rubik", size: 20).weight(.medium))
                    .tracking(0.25)
                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                
                Text("Create a new, strong password that you don't use before")
                    .font(Font.custom("Rubik", size: 14))
                    .lineSpacing(18)
                    .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
            }
            .offset(x: 0, y: -233)
            
            // Main form content
            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 16) {
                        // Create Password field
                        VStack(alignment: .leading, spacing: 8) {
                            VStack(alignment: .leading, spacing: 4) {
                                HStack(spacing: 8) {
                                    SecureField("Create Password", text: $newPassword)
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
                        
                        // Confirm Password field
                        VStack(alignment: .leading, spacing: 8) {
                            VStack(alignment: .leading, spacing: 4) {
                                HStack(spacing: 8) {
                                    SecureField("Confirm Password", text: $confirmPassword)
                                        .font(Font.custom("Inter", size: 16))
                                        .tracking(0.50)
                                        .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
                                }
                                .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                                .frame(height: 48)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .cornerRadius(8)
                                
                                // Password requirement text
                                Text("At least 8 characters")
                                    .font(Font.custom("Rubik", size: 12))
                                    .tracking(0.40)
                                    .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
                            }
                        }
                        .frame(width: 358)
                    }
                    
                    // Verify button
                    VStack(alignment: .leading, spacing: 10) {
                        Button(action: {
                            handlePasswordChange()
                        }) {
                            HStack(spacing: 4) {
                                Text("verify")
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
            }
            .frame(height: 555)
            .offset(x: 0, y: 112.50)
        }
        .frame(width: 390, height: 844)
        .background(.white)
    }
    
    // MARK: - Helper Functions
    private func handlePasswordChange() {
        // Handle password change logic
        // For now, just dismiss the view
        dismiss()
    }
}

#Preview {
    ChangePasswordView()
}
