//
//  VerifyCodeView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct VerifyCodeView: View {
    @State private var verificationCode: String = ""
    @State private var showChangePassword = false
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
                Text("Verify Code")
                    .font(Font.custom("Rubik", size: 20).weight(.medium))
                    .tracking(0.25)
                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                
                Text("An authentication code has been sent to your email")
                    .font(Font.custom("Rubik", size: 14))
                    .lineSpacing(18)
                    .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
            }
            .offset(x: 0, y: -242)
            
            // Main form content
            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 16) {
                    // Code input field
                    VStack(alignment: .leading, spacing: 8) {
                        VStack(alignment: .leading, spacing: 4) {
                            HStack(spacing: 8) {
                                TextField("Enter Code", text: $verificationCode)
                                    .font(Font.custom("Inter", size: 16))
                                    .tracking(0.50)
                                    .foregroundColor(Color(red: 0.29, green: 0.28, blue: 0.39))
                            }
                            .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                            .frame(height: 48)
                            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                            .cornerRadius(8)
                            
                            // Resend code link
                            Text("Didn't receive a code? Resend")
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
                        handleVerification()
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
            .frame(height: 573)
            .offset(x: 0, y: 103.50)
        }
        .frame(width: 390, height: 844)
        .background(.white)
        .fullScreenCover(isPresented: $showChangePassword) {
            ChangePasswordView()
        }
    }
    
    // MARK: - Helper Functions
    private func handleVerification() {
        // Handle code verification logic
        // After successful verification, show change password screen
        showChangePassword = true
    }
}

#Preview {
    VerifyCodeView()
}
