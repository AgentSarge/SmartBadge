//
//  RecordingsView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct RecordingsView: View {
    var body: some View {
        ZStack {
            // White background
            Color.white
                .ignoresSafeArea()
            
            // Header with title and icon
            HStack(spacing: 207) {
                Text("Recordings")
                    .font(Font.custom("Inter", size: 24).weight(.semibold))
                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                ZStack {
                    // Header icon placeholder
                }
                .frame(width: 32, height: 32)
            }
            .frame(width: 358)
            .offset(x: 0, y: -342)
            
            // Recordings list
            VStack(alignment: .leading, spacing: 24) {
                // Recording 1 - Black background
                VStack(alignment: .leading, spacing: 0) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 358, height: 159)
                            .background(.black)
                            .cornerRadius(16)
                            .offset(x: 0, y: 0)
                        
                        // Room info overlay
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Living Room")
                                .font(Font.custom("Inter", size: 14).weight(.medium))
                                .foregroundColor(.white)
                            Text("3/3 is on")
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(.white)
                                .opacity(0.80)
                        }
                        .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                        .cornerRadius(8)
                        .offset(x: -114, y: -41.50)
                    }
                    .frame(width: 358, height: 159)
                    
                    // Device controls
                    HStack(alignment: .top, spacing: 16) {
                        HStack(spacing: 8) {
                            ZStack {
                                ZStack {
                                    // Device icon placeholder
                                }
                                .frame(width: 20, height: 20)
                                .offset(x: 0, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(21)
                            
                            ZStack {
                                ZStack {
                                    // Device icon placeholder
                                }
                                .frame(width: 20, height: 20)
                                .offset(x: 0.50, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(21)
                            
                            ZStack {
                                ZStack {
                                    // Device icon placeholder
                                }
                                .frame(width: 20, height: 20)
                                .offset(x: 0.50, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(21)
                            .opacity(0.80)
                            
                            ZStack {
                                ZStack {
                                    // Device icon placeholder
                                }
                                .frame(width: 20, height: 20)
                                .offset(x: 0.50, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(21)
                            .opacity(0.70)
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(height: 17)
                        }
                    }
                    .padding(16)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                    .cornerRadius(16)
                }
                
                // Recording 2 - Semi-transparent black
                VStack(alignment: .leading, spacing: 0) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 358, height: 159)
                            .background(Color(red: 0, green: 0, blue: 0).opacity(0.40))
                            .cornerRadius(12)
                            .offset(x: 0, y: 0)
                        
                        // Room info overlay
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Living Room")
                                .font(Font.custom("Inter", size: 14).weight(.medium))
                                .foregroundColor(.white)
                            Text("3/3 is on")
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(.white)
                                .opacity(0.80)
                        }
                        .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                        .cornerRadius(8)
                        .offset(x: -114, y: -41.50)
                    }
                    .frame(width: 358, height: 159)
                    
                    // Device controls
                    HStack(alignment: .top, spacing: 16) {
                        HStack(spacing: 8) {
                            ZStack {
                                ZStack {
                                    // Device icon placeholder
                                }
                                .frame(width: 20, height: 20)
                                .offset(x: 0, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(21)
                            
                            ZStack {
                                ZStack {
                                    // Device icon placeholder
                                }
                                .frame(width: 20, height: 20)
                                .offset(x: 0.50, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(21)
                            
                            ZStack {
                                ZStack {
                                    // Device icon placeholder
                                }
                                .frame(width: 20, height: 20)
                                .offset(x: 0.50, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(21)
                            .opacity(0.80)
                            
                            ZStack {
                                ZStack {
                                    // Device icon placeholder
                                }
                                .frame(width: 20, height: 20)
                                .offset(x: 0.50, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(21)
                            .opacity(0.70)
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(height: 17)
                        }
                    }
                    .padding(16)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                    .cornerRadius(16)
                }
                
                // Recording 3 - Reddish background
                VStack(alignment: .leading, spacing: 0) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 358, height: 159)
                            .background(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
                            .cornerRadius(12)
                            .offset(x: 0, y: 0)
                        
                        // Room info overlay
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Living Room")
                                .font(Font.custom("Inter", size: 14).weight(.medium))
                                .foregroundColor(.white)
                            Text("3/3 is on")
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(.white)
                                .opacity(0.80)
                        }
                        .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                        .cornerRadius(8)
                        .offset(x: -114, y: -41.50)
                    }
                    .frame(width: 358, height: 159)
                    
                    // Device controls
                    HStack(alignment: .top, spacing: 16) {
                        HStack(spacing: 8) {
                            ZStack {
                                ZStack {
                                    // Device icon placeholder
                                }
                                .frame(width: 20, height: 20)
                                .offset(x: 0, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(21)
                            
                            ZStack {
                                ZStack {
                                    // Device icon placeholder
                                }
                                .frame(width: 20, height: 20)
                                .offset(x: 0.50, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(21)
                            
                            ZStack {
                                ZStack {
                                    // Device icon placeholder
                                }
                                .frame(width: 20, height: 20)
                                .offset(x: 0.50, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(21)
                            .opacity(0.80)
                            
                            ZStack {
                                ZStack {
                                    // Device icon placeholder
                                }
                                .frame(width: 20, height: 20)
                                .offset(x: 0.50, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(21)
                            .opacity(0.70)
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(height: 17)
                        }
                    }
                    .padding(16)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                    .cornerRadius(16)
                }
            }
            .offset(x: 0, y: 56.50)
            
            // Device status cards
            // Fans card
            HStack(spacing: 16) {
                HStack(spacing: 16) {
                    ZStack {
                        ZStack {
                            // Fan icon placeholder
                        }
                        .frame(width: 20, height: 20)
                        .offset(x: 0.50, y: 0)
                    }
                    .frame(width: 32, height: 32)
                    .background(.white)
                    .cornerRadius(21)
                }
                VStack(alignment: .leading, spacing: 2) {
                    Text("Fans")
                        .font(Font.custom("Inter", size: 16).weight(.medium))
                        .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                    Text("2 Device")
                        .font(Font.custom("Inter", size: 12).weight(.medium))
                        .foregroundColor(.black)
                        .opacity(0.60)
                }
            }
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .frame(width: 358)
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
            .cornerRadius(12)
            .offset(x: 0, y: 366)
            
            // Smart Light card
            HStack(spacing: 16) {
                HStack(spacing: 16) {
                    ZStack {
                        ZStack {
                            // Light icon placeholder
                        }
                        .frame(width: 20, height: 20)
                        .offset(x: 0.50, y: 0)
                    }
                    .frame(width: 32, height: 32)
                    .background(.white)
                    .cornerRadius(21)
                }
                VStack(alignment: .leading, spacing: 2) {
                    Text("Smart Light")
                        .font(Font.custom("Inter", size: 16).weight(.medium))
                        .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                    Text("4 Device")
                        .font(Font.custom("Inter", size: 12).weight(.medium))
                        .foregroundColor(.black)
                        .opacity(0.60)
                }
            }
            .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
            .frame(width: 358)
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
            .cornerRadius(12)
            .offset(x: 0, y: 442)
            
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
                
                // Active tab (Recordings)
                HStack(spacing: 8) {
                    ZStack {
                        // Tab icon placeholder
                    }
                    .frame(width: 24, height: 24)
                    Text("Recordings")
                        .font(Font.custom("Manrope", size: 14).weight(.semibold))
                        .foregroundColor(.white)
                }
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                .background(Color(red: 0.17, green: 0.17, blue: 0.17))
                .cornerRadius(8)
                
                // Tab 3
                HStack(spacing: 8) {
                    ZStack {
                        // Tab icon placeholder
                    }
                    .frame(width: 24, height: 24)
                }
                .padding(8)
                .background(Color(red: 0.06, green: 0.06, blue: 0.06))
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
    RecordingsView()
}
