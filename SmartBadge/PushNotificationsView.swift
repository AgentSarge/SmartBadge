//
//  PushNotificationsView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct PushNotificationsView: View {
    @State private var pushNotificationsEnabled = true
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
                            Text("Push Notifications")
                                .font(Font.custom("Inter", size: 24).weight(.semibold))
                                .foregroundColor(.black)
                            Spacer()
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                    // Push notifications toggle section
                    HStack(alignment: .top, spacing: 16) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Push Notifications")
                                .font(Font.custom("Inter", size: 16).weight(.medium))
                                .foregroundColor(.black)
                            Text("Allow app to send you push notifications on your lockscreen")
                                .font(Font.custom("Inter", size: 12).weight(.medium))
                                .foregroundColor(.black.opacity(0.6))
                        }
                        
                        Spacer()
                        
                        // Custom toggle switch
                        Button(action: {
                            pushNotificationsEnabled.toggle()
                        }) {
                            ZStack {
                                // Toggle background
                                Rectangle()
                                    .frame(width: 32, height: 16)
                                    .background(pushNotificationsEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color.gray)
                                    .cornerRadius(10)
                                
                                // Toggle thumb
                                Circle()
                                    .frame(width: 12, height: 12)
                                    .background(.white)
                                    .offset(x: pushNotificationsEnabled ? 8 : -8)
                                
                                // Small orange line in thumb
                                if pushNotificationsEnabled {
                                    Rectangle()
                                        .frame(width: 1.6, height: 4.8)
                                        .background(Color(red: 1, green: 0.34, blue: 0.08))
                                        .cornerRadius(1)
                                }
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                    .cornerRadius(12)
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
    PushNotificationsView()
}