//
//  ProfileView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var showProfileDetails = false
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            // White background
            Color.white
                .ignoresSafeArea()
            
            // Status bar
            HStack(spacing: 67) {
                HStack(spacing: 4) {
                    HStack(spacing: 0) {
                        Text("9")
                            .font(Font.custom("Rubik", size: 14).weight(.medium))
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        Text(":")
                            .font(Font.custom("Rubik", size: 14).weight(.medium))
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        Text("41")
                            .font(Font.custom("Rubik", size: 14).weight(.medium))
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                    }
                }
                
                HStack(spacing: 8.50) {
                    // Signal strength
                    ZStack {
                        // Signal bars placeholder
                    }
                    .frame(width: 18, height: 10)
                    
                    // WiFi
                    ZStack {
                        // WiFi icon placeholder
                    }
                    .frame(width: 16, height: 11.62)
                    
                    // Battery
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 17, height: 8)
                            .background(Color(red: 0.06, green: 0.06, blue: 0.06))
                            .cornerRadius(1)
                            .offset(x: -1.50, y: 0)
                    }
                    .frame(width: 24, height: 12)
                }
            }
            .padding(EdgeInsets(top: 16, leading: 35, bottom: 16, trailing: 20))
            .frame(width: 390, height: 48)
            .offset(x: 0, y: -398)
            
            // Profile title
            Text("Profile")
                .font(Font.custom("Inter", size: 24).weight(.semibold))
                .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                .offset(x: -119.50, y: -342)
            
            // User profile section
            VStack(spacing: 16) {
                VStack(alignment: .trailing, spacing: 0) {
                    // Profile image
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 110, height: 110)
                        .background(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
                        .overlay(
                            Ellipse()
                                .inset(by: 1.50)
                                .stroke(Color(red: 1, green: 0.34, blue: 0.08), lineWidth: 1.50)
                        )
                    
                    // Edit button
                    HStack(spacing: 0) {
                        ZStack {
                            // Edit icon placeholder
                        }
                        .frame(width: 18, height: 18)
                    }
                    .padding(8)
                    .frame(width: 32, height: 32)
                    .background(Color(red: 1, green: 0.34, blue: 0.08))
                    .cornerRadius(25)
                    .offset(x: 39, y: 39)
                }
                
                // User info
                VStack(alignment: .leading, spacing: 4) {
                    Text("Ruben Geidt")
                        .font(Font.custom("Inter", size: 20).weight(.semibold))
                        .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                    
                    Text("ruben.geidt@example.com")
                        .font(Font.custom("Inter", size: 14).weight(.medium))
                        .foregroundColor(.black)
                        .opacity(0.60)
                }
            }
            .frame(width: 358)
            .offset(x: 0, y: -224.50)
            
            // Menu options
            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 16) {
                    // Profile details
                    Button(action: {
                        showProfileDetails = true
                    }) {
                        HStack(spacing: 16) {
                            HStack(spacing: 10) {
                                ZStack {
                                    // Profile icon placeholder
                                }
                                .frame(width: 22, height: 22)
                            }
                            .padding(10)
                            .frame(width: 40, height: 40)
                            .background(.white)
                            .cornerRadius(32)
                            
                            Text("Profile details")
                                .font(Font.custom("Inter", size: 16).weight(.medium))
                                .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                            
                            Spacer()
                            
                            ZStack {
                                // Chevron icon placeholder
                            }
                            .frame(width: 24, height: 24)
                        }
                        .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                        .frame(width: 358)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .cornerRadius(12)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    // Settings
                    HStack(spacing: 16) {
                        HStack(spacing: 10) {
                            ZStack {
                                // Settings icon placeholder
                            }
                            .frame(width: 24, height: 24)
                        }
                        .padding(10)
                        .frame(width: 40, height: 40)
                        .background(.white)
                        .cornerRadius(32)
                        
                        Text("Settings")
                            .font(Font.custom("Inter", size: 16).weight(.medium))
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        
                        Spacer()
                        
                        ZStack {
                            // Chevron icon placeholder
                        }
                        .frame(width: 24, height: 24)
                    }
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                    .frame(width: 358)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                    .cornerRadius(12)
                    
                    // Push Notifications
                    HStack(spacing: 16) {
                        HStack(spacing: 10) {
                            ZStack {
                                // Notification icon placeholder
                            }
                            .frame(width: 24, height: 24)
                        }
                        .padding(10)
                        .frame(width: 40, height: 40)
                        .background(.white)
                        .cornerRadius(32)
                        
                        Text("Push Notifications")
                            .font(Font.custom("Inter", size: 16).weight(.medium))
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        
                        Spacer()
                        
                        ZStack {
                            // Chevron icon placeholder
                        }
                        .frame(width: 24, height: 24)
                    }
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                    .frame(width: 358)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                    .cornerRadius(12)
                }
                
                VStack(alignment: .leading, spacing: 15) {
                    // Support
                    HStack(spacing: 16) {
                        HStack(spacing: 10) {
                            ZStack {
                                // Support icon placeholder
                            }
                            .frame(width: 24, height: 24)
                        }
                        .padding(10)
                        .frame(width: 40, height: 40)
                        .background(.white)
                        .cornerRadius(32)
                        
                        Text("Support")
                            .font(Font.custom("Inter", size: 16).weight(.medium))
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        
                        Spacer()
                        
                        ZStack {
                            // Chevron icon placeholder
                        }
                        .frame(width: 24, height: 24)
                    }
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                    .frame(width: 358)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                    .cornerRadius(12)
                    
                    // Logout
                    HStack(spacing: 16) {
                        HStack(spacing: 10) {
                            ZStack {
                                // Logout icon placeholder
                            }
                            .frame(width: 22, height: 22)
                        }
                        .padding(10)
                        .frame(width: 40, height: 40)
                        .background(.white)
                        .cornerRadius(32)
                        
                        Text("Logout")
                            .font(Font.custom("Inter", size: 16).weight(.medium))
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        
                        Spacer()
                        
                        ZStack {
                            // Chevron icon placeholder
                        }
                        .frame(width: 24, height: 24)
                    }
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                    .frame(width: 358)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                    .cornerRadius(12)
                }
            }
            .frame(width: 358)
            .offset(x: 0, y: 100.50)
            
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
        .fullScreenCover(isPresented: $showProfileDetails) {
            ProfileDetailsView()
        }
    }
}

#Preview {
    ProfileView()
}
