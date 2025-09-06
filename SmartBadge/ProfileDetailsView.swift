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
        VStack(spacing: 0) {
            // Main content
            ScrollView {
                VStack(spacing: 24) {
                    // Header section
                    VStack(spacing: 16) {
                        // Back button and title
                        HStack(spacing: 4) {
                            Button(action: {
                                dismiss()
                            }) {
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(.black)
                            }
                            
                            Text("Profile")
                                .font(Font.custom("Inter", size: 16).weight(.medium))
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        // Page title
                        HStack {
                            Text("Profile details")
                                .font(Font.custom("Inter", size: 24).weight(.semibold))
                                .foregroundColor(.black)
                            Spacer()
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                    // Form fields
                    VStack(spacing: 16) {
                        // First Name field
                        VStack(alignment: .leading, spacing: 8) {
                            TextField("Ruben", text: $firstName)
                                .font(Font.custom("Inter", size: 16))
                                .tracking(0.50)
                                .foregroundColor(Color(red: 0.47, green: 0.46, blue: 0.49))
                                .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                                .frame(height: 48)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .cornerRadius(8)
                        }
                        
                        // Last Name field
                        VStack(alignment: .leading, spacing: 8) {
                            TextField("Geidt", text: $lastName)
                                .font(Font.custom("Inter", size: 16))
                                .tracking(0.50)
                                .foregroundColor(Color(red: 0.47, green: 0.46, blue: 0.49))
                                .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                                .frame(height: 48)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .cornerRadius(8)
                        }
                        
                        // Date of Birth field
                        VStack(alignment: .leading, spacing: 8) {
                            HStack {
                                TextField("23 December, 1992", text: $dateOfBirth)
                                    .font(Font.custom("Inter", size: 16))
                                    .tracking(0.50)
                                    .foregroundColor(Color(red: 0.47, green: 0.46, blue: 0.49))
                                
                                Spacer()
                                
                                // Calendar icon
                                Image(systemName: "calendar")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(.gray)
                                    .opacity(0.6)
                            }
                            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                            .frame(height: 48)
                            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                            .cornerRadius(8)
                        }
                        
                        // Email field (read-only)
                        VStack(alignment: .leading, spacing: 8) {
                            TextField("ruben.geidt@example.com", text: $email)
                                .font(Font.custom("Inter", size: 16))
                                .tracking(0.50)
                                .foregroundColor(Color(red: 0.74, green: 0.73, blue: 0.75))
                                .disabled(true)
                                .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
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
                    .padding(.horizontal, 20)
                    
                    // Bottom padding for navigation bar
                    Spacer()
                        .frame(height: 100)
                }
            }
            
            // Bottom navigation bar
            HStack(spacing: 0) {
                // Dashboard
                VStack(spacing: 4) {
                    Image(systemName: "grid")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                
                // Recordings
                VStack(spacing: 4) {
                    Image(systemName: "doc.text")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                
                // Profile (Active)
                VStack(spacing: 4) {
                    Image(systemName: "person")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white)
                    Text("Profile")
                        .font(Font.custom("Manrope", size: 14).weight(.semibold))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(Color(red: 0.17, green: 0.17, blue: 0.17))
                .cornerRadius(8)
                .padding(.horizontal, 8)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
            .background(Color(red: 0.06, green: 0.06, blue: 0.06))
            .cornerRadius(16)
            .padding(.horizontal, 16)
            .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
    }
}

#Preview {
    ProfileDetailsView()
}