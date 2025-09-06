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
            Text("Push Notifications")
                .font(Font.custom("Inter", size: 24).weight(.semibold))
                .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                .offset(x: -72.50, y: -291.50)
            
            // Push notifications toggle section
            HStack(alignment: .top, spacing: 16) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Push Notifications")
                        .font(Font.custom("Inter", size: 16).weight(.medium))
                        .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                    Text("Allow app to send you push notifications on your lockscreen")
                        .font(Font.custom("Inter", size: 12).weight(.medium))
                        .foregroundColor(.black)
                        .opacity(0.60)
                }
                
                // Custom toggle switch
                Button(action: {
                    pushNotificationsEnabled.toggle()
                }) {
                    ZStack {
                        // Toggle background
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 16)
                            .background(pushNotificationsEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color.gray)
                            .cornerRadius(10)
                            .offset(x: 0, y: 0)
                        
                        // Toggle thumb
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 1.60, height: 4.80)
                                .background(pushNotificationsEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color.gray)
                                .cornerRadius(1)
                                .offset(x: 0, y: -0)
                        }
                        .frame(width: 14.40, height: 14.40)
                        .background(.white)
                        .cornerRadius(9)
                        .offset(x: pushNotificationsEnabled ? 8 : -8, y: 0)
                    }
                    .frame(width: 32, height: 16)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .frame(width: 358)
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
            .cornerRadius(12)
            .offset(x: 0, y: -206.50)
            
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
    PushNotificationsView()
}
