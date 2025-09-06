//
//  ProfileView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var showProfileDetails = false
    @State private var showPushNotifications = false
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 0) {
            // Main content
            ScrollView {
                VStack(spacing: 24) {
                    // Header section
                    VStack(spacing: 24) {
                        // Title
                        HStack {
                            Text("Profile")
                                .font(Font.custom("Inter", size: 28).weight(.bold))
                                .foregroundColor(.black)
                            Spacer()
                        }
                        
                        // User profile section
                        VStack(spacing: 16) {
                            // Profile image
                            ZStack {
                                // Profile image placeholder
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                    .overlay(
                                        Circle()
                                            .stroke(Color(red: 1, green: 0.34, blue: 0.08), lineWidth: 2)
                                    )
                                
                                // Placeholder for profile image
                                Image(systemName: "person.fill")
                                    .font(.system(size: 40, weight: .medium))
                                    .foregroundColor(.gray)
                                
                                // Edit icon
                                Button(action: {
                                    // Handle edit profile image
                                }) {
                                    ZStack {
                                        Circle()
                                            .frame(width: 28, height: 28)
                                            .background(Color(red: 1, green: 0.34, blue: 0.08))
                                        
                                        Image(systemName: "pencil")
                                            .font(.system(size: 14, weight: .medium))
                                            .foregroundColor(.white)
                                    }
                                }
                                .offset(x: 35, y: 35)
                            }
                            
                            // User info
                            VStack(spacing: 4) {
                                Text("Ruben Geidt")
                                    .font(Font.custom("Inter", size: 20).weight(.semibold))
                                    .foregroundColor(.black)
                                
                                Text("ruben.geidt@example.com")
                                    .font(Font.custom("Inter", size: 14))
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                    // Menu options
                    VStack(spacing: 12) {
                        // Profile details
                        MenuOption(
                            icon: "person",
                            title: "Profile details",
                            action: {
                                showProfileDetails = true
                            }
                        )
                        
                        // Settings
                        MenuOption(
                            icon: "gearshape",
                            title: "Settings",
                            action: {
                                // Handle settings
                            }
                        )
                        
                        // Push Notifications
                        MenuOption(
                            icon: "bell",
                            title: "Push Notifications",
                            action: {
                                showPushNotifications = true
                            }
                        )
                        
                        // Support
                        MenuOption(
                            icon: "globe",
                            title: "Support",
                            action: {
                                // Handle support
                            }
                        )
                        
                        // Logout
                        MenuOption(
                            icon: "rectangle.portrait.and.arrow.right",
                            title: "Logout",
                            action: {
                                // Handle logout
                            }
                        )
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
                        .font(Font.custom("Inter", size: 12).weight(.medium))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(Color(red: 0.2, green: 0.2, blue: 0.2))
                .cornerRadius(12)
                .padding(.horizontal, 8)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
            .background(Color(red: 0.1, green: 0.1, blue: 0.1))
            .cornerRadius(20)
            .padding(.horizontal, 16)
            .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .fullScreenCover(isPresented: $showProfileDetails) {
            ProfileDetailsView()
        }
        .fullScreenCover(isPresented: $showPushNotifications) {
            PushNotificationsView()
        }
    }
}

// Menu Option Component
struct MenuOption: View {
    let icon: String
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 16) {
                // Icon
                Image(systemName: icon)
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.black)
                    .frame(width: 24, height: 24)
                
                // Title
                Text(title)
                    .font(Font.custom("Inter", size: 16).weight(.medium))
                    .foregroundColor(.black)
                
                Spacer()
                
                // Chevron
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
            .cornerRadius(12)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    ProfileView()
}