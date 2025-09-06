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
    @State private var fansEnabled = false
    @State private var airConditionerEnabled = true
    @State private var smartLightEnabled = true
    
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
                    ZStack {
                        // Signal icon placeholder
                    }
                    .frame(width: 18, height: 10)
                    ZStack {
                        // WiFi icon placeholder
                    }
                    .frame(width: 16, height: 11.62)
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
            
            // Header with title and icon
            HStack(spacing: 170) {
                Text("Dashboard")
                    .font(Font.custom("Inter", size: 24).weight(.semibold))
                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                ZStack {
                    // Header icon placeholder
                }
                .frame(width: 32, height: 32)
            }
            .frame(width: 358)
            .offset(x: 0, y: -342)
            
            // Follow Up badge
            HStack(alignment: .top, spacing: 136) {
                HStack(alignment: .top, spacing: 8) {
                    ZStack {
                        ZStack {
                            // Follow up icon placeholder
                        }
                        .frame(width: 15, height: 15)
                        .offset(x: 0.38, y: 0)
                    }
                    .frame(width: 24, height: 24)
                    .background(.white)
                    .cornerRadius(21)
                    VStack(alignment: .leading, spacing: 4) {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Follow Up")
                                .font(Font.custom("Inter", size: 14).weight(.medium))
                                .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        }
                        Text("2 Active")
                            .font(Font.custom("Inter", size: 11))
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                            .opacity(0.80)
                    }
                }
                .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
                .background(Color(red: 1, green: 0.34, blue: 0.08))
                .cornerRadius(14)
            }
            .offset(x: -118, y: -277)
            
            // Recent Recordings section
            VStack(alignment: .leading, spacing: 16) {
                Text("Recent Recordings")
                    .font(Font.custom("Inter", size: 20).weight(.medium))
                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                VStack(alignment: .leading, spacing: 16) {
                    // Recording 1
                    HStack(spacing: 16) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .padding(10)
                            .frame(width: 40, height: 40)
                            .background(.white)
                            .cornerRadius(32)
                        Text("Recording 1 ")
                            .font(Font.custom("Inter", size: 16).weight(.medium))
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        Spacer()
                        // Toggle switch
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 32, height: 16)
                                .background(Color(red: 1, green: 0.34, blue: 0.08))
                                .cornerRadius(10)
                                .offset(x: 0, y: 0)
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 1.60, height: 4.80)
                                    .background(Color(red: 1, green: 0.34, blue: 0.08))
                                    .cornerRadius(1)
                                    .offset(x: 0, y: -0)
                            }
                            .frame(width: 14.40, height: 14.40)
                            .background(.white)
                            .cornerRadius(9)
                            .offset(x: 8, y: 0)
                        }
                        .frame(width: 32, height: 16)
                    }
                    .padding(EdgeInsets(top: 20, leading: 16, bottom: 14, trailing: 16))
                    .frame(width: 342)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                    .cornerRadius(12)
                    
                    // Recording 2
                    HStack(spacing: 16) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .padding(10)
                            .frame(width: 40, height: 40)
                            .background(.white)
                            .cornerRadius(32)
                        Text("Recording 2")
                            .font(Font.custom("Inter", size: 16).weight(.medium))
                            .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                        Spacer()
                        // Toggle switch
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 32, height: 16)
                                .background(Color(red: 1, green: 0.34, blue: 0.08))
                                .cornerRadius(10)
                                .offset(x: 0, y: 0)
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 1.60, height: 4.80)
                                    .background(Color(red: 1, green: 0.34, blue: 0.08))
                                    .cornerRadius(1)
                                    .offset(x: 0, y: -0)
                            }
                            .frame(width: 14.40, height: 14.40)
                            .background(.white)
                            .cornerRadius(9)
                            .offset(x: 8, y: 0)
                        }
                        .frame(width: 32, height: 16)
                    }
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                    .frame(width: 342)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                    .cornerRadius(12)
                }
                .frame(width: 354)
            }
            .offset(x: -2, y: -132)
            
            // Stats section
            VStack(alignment: .leading, spacing: 16) {
                Text("Stats")
                    .font(Font.custom("Inter", size: 20).weight(.medium))
                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                HStack(alignment: .top, spacing: 16) {
                    // Left column
                    VStack(alignment: .leading, spacing: 16) {
                        // Smart TV
                        VStack(alignment: .leading, spacing: 16) {
                            HStack(spacing: 16) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 20, height: 20)
                                        .offset(x: 0, y: 0)
                                }
                                .frame(width: 32, height: 32)
                                .background(.white)
                                .cornerRadius(21)
                                Spacer()
                                // Toggle switch
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 32, height: 16)
                                        .background(smartTVEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color(red: 0.06, green: 0.06, blue: 0.06))
                                        .cornerRadius(10)
                                        .offset(x: 0, y: 0)
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 1.60, height: 4.80)
                                            .background(smartTVEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color(red: 0.12, green: 0.10, blue: 0.14))
                                            .cornerRadius(1)
                                            .offset(x: 0, y: -0)
                                    }
                                    .frame(width: 14.40, height: 14.40)
                                    .background(.white)
                                    .cornerRadius(9)
                                    .offset(x: smartTVEnabled ? 8 : -8, y: 0)
                                }
                                .frame(width: 32, height: 16)
                            }
                            VStack(alignment: .leading, spacing: 2) {
                                Text("Smart TV")
                                    .font(Font.custom("Inter", size: 16).weight(.medium))
                                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                                Text("1 Device")
                                    .font(Font.custom("Inter", size: 12).weight(.medium))
                                    .foregroundColor(.black)
                                    .opacity(0.60)
                            }
                        }
                        .padding(16)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .cornerRadius(12)
                        
                        // Air Purifier
                        VStack(alignment: .leading, spacing: 16) {
                            HStack(spacing: 16) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 32, height: 32)
                                    .background(.white)
                                    .cornerRadius(21)
                                Spacer()
                                // Toggle switch
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 32, height: 16)
                                        .background(airPurifierEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color(red: 0.06, green: 0.06, blue: 0.06))
                                        .cornerRadius(10)
                                        .offset(x: 0, y: 0)
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 4.80, height: 4.80)
                                            .background(airPurifierEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color(red: 0.12, green: 0.10, blue: 0.14))
                                            .cornerRadius(3)
                                            .offset(x: -0, y: -0)
                                    }
                                    .frame(width: 14.40, height: 14.40)
                                    .background(.white)
                                    .cornerRadius(9)
                                    .offset(x: airPurifierEnabled ? 8 : -8, y: 0)
                                }
                                .frame(width: 32, height: 16)
                            }
                            VStack(alignment: .leading, spacing: 2) {
                                Text("Air Purifier")
                                    .font(Font.custom("Inter", size: 16).weight(.medium))
                                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                                Text("4 Device")
                                    .font(Font.custom("Inter", size: 12).weight(.medium))
                                    .foregroundColor(.black)
                                    .opacity(0.60)
                            }
                        }
                        .padding(16)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .cornerRadius(12)
                        
                        // Fans
                        VStack(alignment: .leading, spacing: 16) {
                            HStack(spacing: 16) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 32, height: 32)
                                    .background(.white)
                                    .cornerRadius(21)
                                Spacer()
                                // Toggle switch
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 32, height: 16)
                                        .background(fansEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color(red: 0.06, green: 0.06, blue: 0.06))
                                        .cornerRadius(10)
                                        .offset(x: 0, y: 0)
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 4.80, height: 4.80)
                                            .background(fansEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color(red: 0.12, green: 0.10, blue: 0.14))
                                            .cornerRadius(3)
                                            .offset(x: -0, y: -0)
                                    }
                                    .frame(width: 14.40, height: 14.40)
                                    .background(.white)
                                    .cornerRadius(9)
                                    .offset(x: fansEnabled ? 8 : -8, y: 0)
                                }
                                .frame(width: 32, height: 16)
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
                        .padding(16)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .cornerRadius(12)
                    }
                    
                    // Right column
                    VStack(alignment: .leading, spacing: 16) {
                        // Air Conditioner
                        VStack(alignment: .leading, spacing: 16) {
                            HStack(spacing: 16) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 20, height: 20)
                                        .offset(x: 0.50, y: 0)
                                }
                                .frame(width: 32, height: 32)
                                .background(.white)
                                .cornerRadius(21)
                                Spacer()
                                // Toggle switch
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 32, height: 16)
                                        .background(airConditionerEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color(red: 0.06, green: 0.06, blue: 0.06))
                                        .cornerRadius(10)
                                        .offset(x: 0, y: 0)
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 1.60, height: 4.80)
                                            .background(airConditionerEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color(red: 0.12, green: 0.10, blue: 0.14))
                                            .cornerRadius(1)
                                            .offset(x: 0, y: -0)
                                    }
                                    .frame(width: 14.40, height: 14.40)
                                    .background(.white)
                                    .cornerRadius(9)
                                    .offset(x: airConditionerEnabled ? 8 : -8, y: 0)
                                }
                                .frame(width: 32, height: 16)
                            }
                            VStack(alignment: .leading, spacing: 2) {
                                Text("Air Conditioner")
                                    .font(Font.custom("Inter", size: 16).weight(.medium))
                                    .foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.06))
                                Text("1 Device")
                                    .font(Font.custom("Inter", size: 12).weight(.medium))
                                    .foregroundColor(.black)
                                    .opacity(0.60)
                            }
                        }
                        .padding(16)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .cornerRadius(12)
                        
                        // Smart Light
                        VStack(alignment: .leading, spacing: 16) {
                            HStack(spacing: 16) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 32, height: 32)
                                    .background(.white)
                                    .cornerRadius(21)
                                Spacer()
                                // Toggle switch
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 32, height: 16)
                                        .background(smartLightEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color(red: 0.06, green: 0.06, blue: 0.06))
                                        .cornerRadius(10)
                                        .offset(x: 0, y: 0)
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 1.60, height: 4.80)
                                            .background(smartLightEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color(red: 0.12, green: 0.10, blue: 0.14))
                                            .cornerRadius(1)
                                            .offset(x: 0, y: -0)
                                    }
                                    .frame(width: 14.40, height: 14.40)
                                    .background(.white)
                                    .cornerRadius(9)
                                    .offset(x: smartLightEnabled ? 8 : -8, y: 0)
                                }
                                .frame(width: 32, height: 16)
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
                        .padding(16)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .cornerRadius(12)
                        
                        // Smart Light (duplicate)
                        VStack(alignment: .leading, spacing: 16) {
                            HStack(spacing: 16) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 32, height: 32)
                                    .background(.white)
                                    .cornerRadius(21)
                                Spacer()
                                // Toggle switch
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 32, height: 16)
                                        .background(smartLightEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color(red: 0.06, green: 0.06, blue: 0.06))
                                        .cornerRadius(10)
                                        .offset(x: 0, y: 0)
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 1.60, height: 4.80)
                                            .background(smartLightEnabled ? Color(red: 1, green: 0.34, blue: 0.08) : Color(red: 0.12, green: 0.10, blue: 0.14))
                                            .cornerRadius(1)
                                            .offset(x: 0, y: -0)
                                    }
                                    .frame(width: 14.40, height: 14.40)
                                    .background(.white)
                                    .cornerRadius(9)
                                    .offset(x: smartLightEnabled ? 8 : -8, y: 0)
                                }
                                .frame(width: 32, height: 16)
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
                        .padding(16)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .cornerRadius(12)
                    }
                }
                .frame(width: 358)
            }
            .offset(x: 0, y: 188)
            
            // Bottom navigation tabs
            HStack(alignment: .top, spacing: 8) {
                // Active tab (Dashboard)
                HStack(spacing: 8) {
                    ZStack {
                        // Tab icon placeholder
                    }
                    .frame(width: 24, height: 24)
                    Text("Dashboard")
                        .font(Font.custom("Manrope", size: 14).weight(.semibold))
                        .foregroundColor(.white)
                }
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                .background(Color(red: 0.17, green: 0.17, blue: 0.17))
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
    DashboardView()
}
