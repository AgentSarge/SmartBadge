//
//  ProfileDetailsView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct ProfileDetailsView: View {
    @State private var firstName: String = "Ruben"
    @State private var lastName: String = "Geidt"
    @State private var dateOfBirth: String = "23 December, 1992"
    @State private var email: String = "ruben.geidt@example.com"
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            // White background
            Color.white
                .ignoresSafeArea()
            
            // Header with back button and title
            HStack(spacing: 4) {
                Button(action: {
                    dismiss()
                }) {
                    ZStack {
                        // Back arrow icon placeholder
                    }
                    .frame(width: 20, height: 20)
                }
                
                Text("Profile")
                    .font(Font.custom("Inter", size: 16).weight(.semibold))
                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
            }
            .padding(16)
            .frame(width: 390)
            .offset(x: 0, y: -348)
            
            // Page title
            Text("Profile details")
                .font(Font.custom("Inter", size: 24).weight(.semibold))
                .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                .offset(x: -99.50, y: -291.50)
            
            // Form fields
            VStack(alignment: .leading, spacing: 32) {
                // First Name field
                VStack(alignment: .leading, spacing: 8) {
                    VStack(alignment: .leading, spacing: 4) {
                        HStack(spacing: 8) {
                            TextField("Ruben", text: $firstName)
                                .font(Font.custom("Inter", size: 16))
                                .tracking(0.50)
                                .foregroundColor(Color(red: 0.47, green: 0.46, blue: 0.49))
                        }
                        .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                        .frame(height: 48)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .cornerRadius(8)
                    }
                }
                .frame(width: 358)
                
                // Last Name field
                VStack(alignment: .leading, spacing: 8) {
                    VStack(alignment: .leading, spacing: 4) {
                        HStack(spacing: 8) {
                            TextField("Geidt", text: $lastName)
                                .font(Font.custom("Inter", size: 16))
                                .tracking(0.50)
                                .foregroundColor(Color(red: 0.47, green: 0.46, blue: 0.49))
                        }
                        .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                        .frame(height: 48)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .cornerRadius(8)
                    }
                }
                .frame(width: 358)
                
                // Date of Birth field
                VStack(alignment: .leading, spacing: 8) {
                    VStack(alignment: .leading, spacing: 4) {
                        HStack(spacing: 8) {
                            TextField("23 December, 1992", text: $dateOfBirth)
                                .font(Font.custom("Inter", size: 16))
                                .tracking(0.50)
                                .foregroundColor(Color(red: 0.47, green: 0.46, blue: 0.49))
                            
                            Spacer()
                            
                            ZStack {
                                // Calendar icon placeholder
                            }
                            .frame(width: 24, height: 24)
                            .opacity(0.60)
                        }
                        .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                        .frame(height: 48)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .cornerRadius(8)
                    }
                }
                .frame(width: 358)
                
                // Email field (read-only)
                VStack(alignment: .leading, spacing: 8) {
                    VStack(alignment: .leading, spacing: 4) {
                        HStack(spacing: 8) {
                            TextField("ruben.geidt@example.com", text: $email)
                                .font(Font.custom("Inter", size: 16))
                                .tracking(0.50)
                                .foregroundColor(Color(red: 0.74, green: 0.73, blue: 0.75))
                                .disabled(true)
                        }
                        .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                        .frame(height: 48)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .cornerRadius(8)
                        
                        // Email note
                        Text("Your email address cannot be changed")
                            .font(Font.custom("Inter", size: 12))
                            .tracking(0.40)
                            .foregroundColor(Color(red: 0.74, green: 0.73, blue: 0.75))
                    }
                }
                .frame(width: 358)
            }
            .offset(x: 0, y: -91.50)
            
            // Bottom navigation tabs
            HStack(alignment: .top, spacing: 8) {
                // Tab 1
                HStack(spacing: 8) {
                    ZStack {
                        // Tab icon placeholder
                    }
                    .frame(width: 24, height: 24)
                }
                .padding(8)
                .background(Color(red: 0.06, green: 0.06, blue: 0.06))
                .cornerRadius(8)
                
                // Tab 2
                HStack(spacing: 8) {
                    ZStack {
                        // Tab icon placeholder
                    }
                    .frame(width: 24, height: 24)
                }
                .padding(8)
                .background(Color(red: 0.06, green: 0.06, blue: 0.06))
                .cornerRadius(8)
                
                // Active tab (Profile)
                HStack(spacing: 8) {
                    ZStack {
                        // Tab icon placeholder
                    }
                    .frame(width: 24, height: 24)
                    
                    Text("Profile")
                        .font(Font.custom("Manrope", size: 14).weight(.semibold))
                        .foregroundColor(.white)
                }
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                .background(Color(red: 0.17, green: 0.17, blue: 0.17))
                .cornerRadius(8)
            }
            .padding(8)
            .frame(width: 358)
            .background(Color(red: 0.06, green: 0.06, blue: 0.06))
            .cornerRadius(16)
            .offset(x: 0, y: 370)
        }
        .frame(width: 390, height: 844)
        .background(.white)
    }
}

#Preview {
    ProfileDetailsView()
}
