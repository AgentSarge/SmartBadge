//
//  DashboardView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct DashboardView: View {
    @State private var smartTVEnabled = true
    @State private var airPurifierEnabled = false
    @State private var airConditionerEnabled = true
    @State private var smartLightEnabled = true
    @State private var recording1Enabled = true
    @State private var recording2Enabled = true
    
    var body: some View {
        VStack(spacing: 0) {
            // Main content
            ScrollView {
                VStack(spacing: 24) {
                    // Header section
                    VStack(spacing: 16) {
                        // Title and add button
                        HStack {
                            Text("Dashboard")
                                .font(Font.custom("Inter", size: 28).weight(.bold))
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            // Add button
                            Button(action: {
                                // Handle add action
                            }) {
                                ZStack {
                                    Circle()
                                        .frame(width: 32, height: 32)
                                        .foregroundColor(.black)
                                    
                                    Text("+")
                                        .font(.system(size: 20, weight: .medium))
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        
                        // Follow Up badge
                        HStack(spacing: 8) {
                            Image(systemName: "lightbulb")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white)
                            
                            VStack(alignment: .leading, spacing: 2) {
                                Text("Follow Up")
                                    .font(Font.custom("Inter", size: 14).weight(.medium))
                                    .foregroundColor(.white)
                                Text("2 Active")
                                    .font(Font.custom("Inter", size: 12))
                                    .foregroundColor(.white.opacity(0.8))
                            }
                            
                            Spacer()
                        }
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(Color(red: 1, green: 0.34, blue: 0.08))
                        .cornerRadius(12)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                    // Recent Recordings section
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Recent Recordings")
                            .font(Font.custom("Inter", size: 20).weight(.medium))
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 12) {
                            // Recording 1
                            HStack(spacing: 16) {
                                Text("Recording 1")
                                    .font(Font.custom("Inter", size: 16).weight(.medium))
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                // Toggle switch
                                Button(action: {
                                    recording1Enabled.toggle()
                                }) {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 32, height: 16)
                                            .background(recording1Enabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color.gray)
                                            .cornerRadius(10)
                                        
                                        Circle()
                                            .frame(width: 12, height: 12)
                                            .background(.white)
                                            .offset(x: recording1Enabled ? 8 : -8)
                                        
                                        // Exclamation mark
                                        if recording1Enabled {
                                            Text("!")
                                                .font(.system(size: 8, weight: .bold))
                                                .foregroundColor(Color(red: 1, green: 0.34, blue: 0.08))
                                        }
                                    }
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 12)
                            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                            .cornerRadius(12)
                            
                            // Recording 2
                            HStack(spacing: 16) {
                                Text("Recording 2")
                                    .font(Font.custom("Inter", size: 16).weight(.medium))
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                // Toggle switch
                                Button(action: {
                                    recording2Enabled.toggle()
                                }) {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 32, height: 16)
                                            .background(recording2Enabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color.gray)
                                            .cornerRadius(10)
                                        
                                        Circle()
                                            .frame(width: 12, height: 12)
                                            .background(.white)
                                            .offset(x: recording2Enabled ? 8 : -8)
                                        
                                        // Exclamation mark
                                        if recording2Enabled {
                                            Text("!")
                                                .font(.system(size: 8, weight: .bold))
                                                .foregroundColor(Color(red: 1, green: 0.34, blue: 0.08))
                                        }
                                    }
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 12)
                            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                            .cornerRadius(12)
                        }
                        .padding(.horizontal, 20)
                    }
                    
                    // Stats section
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Stats")
                            .font(Font.custom("Inter", size: 20).weight(.medium))
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)
                        
                        // Grid of device cards
                        LazyVGrid(columns: [
                            GridItem(.flexible()),
                            GridItem(.flexible())
                        ], spacing: 16) {
                            // Smart TV
                            DeviceCard(
                                title: "Smart TV",
                                deviceCount: "1 Device",
                                isEnabled: $smartTVEnabled
                            )
                            
                            // Air Conditioner
                            DeviceCard(
                                title: "Air Conditioner",
                                deviceCount: "1 Device",
                                isEnabled: $airConditionerEnabled
                            )
                            
                            // Air Purifier
                            DeviceCard(
                                title: "Air Purifier",
                                deviceCount: "4 Device",
                                isEnabled: $airPurifierEnabled
                            )
                            
                            // Smart Light
                            DeviceCard(
                                title: "Smart Light",
                                deviceCount: "4 Device",
                                isEnabled: $smartLightEnabled
                            )
                            
                            // Empty card 1
                            DeviceCard(
                                title: "",
                                deviceCount: "",
                                isEnabled: .constant(false)
                            )
                            
                            // Empty card 2
                            DeviceCard(
                                title: "",
                                deviceCount: "",
                                isEnabled: .constant(true)
                            )
                        }
                        .padding(.horizontal, 20)
                    }
                    
                    // Bottom padding for navigation bar
                    Spacer()
                        .frame(height: 100)
                }
            }
            
            // Bottom navigation bar
            HStack(spacing: 0) {
                // Dashboard (Active)
                VStack(spacing: 4) {
                    Image(systemName: "grid")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white)
                    Text("Dashboard")
                        .font(Font.custom("Inter", size: 12).weight(.medium))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(Color(red: 0.2, green: 0.2, blue: 0.2))
                .cornerRadius(12)
                .padding(.horizontal, 8)
                
                // Recordings
                VStack(spacing: 4) {
                    Image(systemName: "doc.text")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                
                // Profile
                VStack(spacing: 4) {
                    Image(systemName: "person")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
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
    }
}

// Device Card Component
struct DeviceCard: View {
    let title: String
    let deviceCount: String
    @Binding var isEnabled: Bool
    
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                // Device icon placeholder
                Circle()
                    .frame(width: 32, height: 32)
                    .background(.white)
                
                Spacer()
                
                // Toggle switch
                Button(action: {
                    isEnabled.toggle()
                }) {
                    ZStack {
                        Rectangle()
                            .frame(width: 32, height: 16)
                            .background(isEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color.gray)
                            .cornerRadius(10)
                        
                        Circle()
                            .frame(width: 12, height: 12)
                            .background(.white)
                            .offset(x: isEnabled ? 8 : -8)
                        
                        // Exclamation mark for enabled state
                        if isEnabled {
                            Text("!")
                                .font(.system(size: 8, weight: .bold))
                                .foregroundColor(Color(red: 1, green: 0.34, blue: 0.08))
                        }
                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
            
            if !title.isEmpty {
                VStack(alignment: .leading, spacing: 2) {
                    Text(title)
                        .font(Font.custom("Inter", size: 16).weight(.medium))
                        .foregroundColor(.black)
                    Text(deviceCount)
                        .font(Font.custom("Inter", size: 12).weight(.medium))
                        .foregroundColor(.black.opacity(0.6))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .padding(16)
        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
        .cornerRadius(12)
    }
}

#Preview {
    DashboardView()
}
