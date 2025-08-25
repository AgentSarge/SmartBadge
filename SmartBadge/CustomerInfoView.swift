//
//  CustomerInfoView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct CustomerInfoView: View {
    let customer: CustomerInfo
    @State private var selectedSortOption = "A→Z"
    @State private var selectedTab = 2
    @Environment(\.dismiss) private var dismiss
    
    let sortOptions = ["A→Z", "Date", "Status", "Priority", "Recent"]
    
    var body: some View {
        ZStack {
            // Dark background
            Color(red: 0.15, green: 0.15, blue: 0.15) // Dark gray background
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 0) {
                    // Header Section
                    CustomerInfoHeaderView(onBack: {
                        dismiss()
                    })
                    
                    // Sort Section
                    CustomerInfoSortView(
                        selectedOption: $selectedSortOption,
                        options: sortOptions
                    )
                    
                    // Main Customer Profile Card
                    CustomerProfileCardView(customer: customer)
                        .padding(.horizontal, 30)
                        .padding(.top, 20)
                    
                    // Content Sections
                    CustomerContentSectionsView()
                        .padding(.horizontal, 30)
                        .padding(.top, 30)
                    
                    Spacer(minLength: 100)
                }
            }
            
            // Fixed Bottom Navigation
            VStack {
                Spacer()
                CustomerInfoBottomNavView(selectedTab: $selectedTab)
            }
        }
        .navigationBarHidden(true)
    }
}

// MARK: - Component Views

struct CustomerInfoHeaderView: View {
    let onBack: () -> Void
    
    var body: some View {
        HStack {
            Button(action: onBack) {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow color
                    .font(.system(size: 18, weight: .medium))
            }
            
            Spacer()
            
            Text("Customer Info")
                .font(Font.custom("League Spartan", size: 24).weight(.semibold))
                .foregroundColor(.white)
            
            Spacer()
            
            HStack(spacing: 12) {
                Button(action: {}) {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 21.28, height: 21.28)
                        .overlay(
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .font(.system(size: 10))
                        )
                }
                
                Button(action: {}) {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 21.28, height: 21.28)
                        .overlay(
                            Image(systemName: "arrow.up.arrow.down")
                                .foregroundColor(.gray)
                                .font(.system(size: 10))
                        )
                }
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
    }
}

struct CustomerInfoSortView: View {
    @Binding var selectedOption: String
    let options: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Sort By")
                    .font(Font.custom("League Spartan", size: 12).weight(.light))
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding(.horizontal, 30)
            
            HStack(spacing: 8) {
                // A→Z Button (selected)
                Button(action: {
                    selectedOption = "A→Z"
                }) {
                    Text("A→Z")
                        .font(Font.custom("League Spartan", size: 12).weight(.medium))
                        .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 4)
                        .background(
                            RoundedRectangle(cornerRadius: 13)
                                .fill(Color(red: 0.99, green: 0.78, blue: 0))
                        )
                }
                
                // Additional filter circles
                ForEach(0..<4) { _ in
                    Button(action: {}) {
                        Circle()
                            .fill(Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.96))
                            .frame(width: 22, height: 21)
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal, 30)
        }
        .padding(.bottom, 20)
    }
}

struct CustomerProfileCardView: View {
    let customer: CustomerInfo
    
    var body: some View {
        VStack(spacing: 20) {
            // Top section: Profile image + Action buttons
            HStack(alignment: .top, spacing: 20) {
                // LEFT: Large Profile Image
                ZStack {
                    // Background circle
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 140, height: 140)
                    
                    // Overlay design circle
                    Circle()
                        .fill(Color.red.opacity(0.3))
                        .frame(width: 120, height: 120)
                    
                    // Profile image placeholder
                    Image(systemName: "person.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 50))
                }
                
                Spacer()
                
                // RIGHT: Action buttons stack
                VStack(spacing: 12) {
                    // Pipeline Status button
                    Button(action: {}) {
                        Text("Pipeline Status")
                            .font(Font.custom("League Spartan", size: 12).weight(.light))
                            .foregroundColor(.white)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 6)
                            .background(Color(red: 0.98, green: 0.35, blue: 0.08)) // Orange
                            .cornerRadius(18)
                    }
                    
                    // Recording button (large yellow square)
                    Button(action: {}) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 18)
                                .fill(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                                .frame(width: 108, height: 108)
                            
                            VStack(spacing: 4) {
                                Image(systemName: "play.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 28))
                                
                                Text("Recording")
                                    .font(Font.custom("League Spartan", size: 12).weight(.bold))
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
            
            // Customer name section
            VStack(spacing: 6) {
                Text("Alexander Bennett")
                    .font(Font.custom("League Spartan", size: 15).weight(.medium))
                    .foregroundColor(.white)
                
                Text("Job Title")
                    .font(Font.custom("League Spartan", size: 13).weight(.light))
                    .foregroundColor(Color.gray)
            }
            
            // Stats row (white pills)
            HStack(spacing: 12) {
                // Star rating
                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0))
                        .font(.system(size: 10))
                    Text("5")
                        .font(Font.custom("League Spartan", size: 12).weight(.light))
                        .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0))
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.white)
                .cornerRadius(13)
                
                // Conversations count
                HStack(spacing: 4) {
                    Image(systemName: "message.fill")
                        .foregroundColor(.black)
                        .font(.system(size: 10))
                    Text("40")
                        .font(Font.custom("League Spartan", size: 12).weight(.light))
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.white)
                .cornerRadius(13)
                
                // Schedule
                HStack(spacing: 4) {
                    Image(systemName: "clock")
                        .foregroundColor(.black)
                        .font(.system(size: 10))
                    Text("Mon-Sat / 9:00AM - 5:00PM")
                        .font(Font.custom("League Spartan", size: 10).weight(.light))
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.white)
                .cornerRadius(13)
            }
            
            // Action buttons row
            HStack {
                // Transcript button (orange)
                Button(action: {}) {
                    Text("Transcript")
                        .font(Font.custom("League Spartan", size: 12))
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 6)
                        .background(Color(red: 0.98, green: 0.35, blue: 0.08)) // Orange
                        .cornerRadius(13)
                }
                
                Spacer()
                
                // White circular action buttons
                HStack(spacing: 8) {
                    Button(action: {}) {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 21, height: 21)
                            .overlay(
                                Image(systemName: "questionmark")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 10))
                            )
                    }
                    
                    Button(action: {}) {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 21, height: 21)
                            .overlay(
                                Image(systemName: "star")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 10))
                            )
                    }
                    
                    Button(action: {}) {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 21, height: 21)
                            .overlay(
                                Image(systemName: "heart")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 10))
                            )
                    }
                }
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 17)
                .fill(Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.98)) // Dark gray card background
        )
    }
}

struct CustomerContentSectionsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            // Summary Section
            VStack(alignment: .leading, spacing: 12) {
                Text("Summary")
                    .font(Font.custom("League Spartan", size: 14).weight(.medium))
                    .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0))
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                    .font(Font.custom("League Spartan", size: 12).weight(.light))
                    .foregroundColor(Color.gray.opacity(0.8))
                    .lineLimit(nil)
            }
            
            // Tagged Objections Section
            VStack(alignment: .leading, spacing: 12) {
                Text("Tagged Objections")
                    .font(Font.custom("League Spartan", size: 14).weight(.medium))
                    .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0))
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                    .font(Font.custom("League Spartan", size: 12).weight(.light))
                    .foregroundColor(Color.gray.opacity(0.8))
                    .lineLimit(nil)
            }
            
            // Highlights Section
            VStack(alignment: .leading, spacing: 12) {
                Text("Highlights")
                    .font(Font.custom("League Spartan", size: 14).weight(.medium))
                    .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0))
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                    .font(Font.custom("League Spartan", size: 12).weight(.light))
                    .foregroundColor(Color.gray.opacity(0.8))
                    .lineLimit(nil)
            }
        }
    }
}

struct CustomerInfoBottomNavView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            CustomerInfoTabButton(icon: "house", isSelected: selectedTab == 0) {
                selectedTab = 0
            }
            
            Spacer()
            
            CustomerInfoTabButton(icon: "message", isSelected: selectedTab == 1) {
                selectedTab = 1
            }
            
            Spacer()
            
            CustomerInfoTabButton(icon: "person.3", isSelected: selectedTab == 2) {
                selectedTab = 2
            }
            
            Spacer()
            
            CustomerInfoTabButton(icon: "calendar", isSelected: selectedTab == 3) {
                selectedTab = 3
            }
        }
        .padding(.horizontal, 40)
        .padding(.vertical, 15)
        .background(Color(red: 0.98, green: 0.35, blue: 0.08)) // Orange background
        .cornerRadius(25)
        .padding(.horizontal, 30)
        .padding(.bottom, 30)
    }
}

struct CustomerInfoTabButton: View {
    let icon: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: icon)
                .foregroundColor(isSelected ? .white : .white.opacity(0.6))
                .font(.system(size: 20))
        }
    }
}

#Preview {
    CustomerInfoView(customer: CustomerInfo(name: "Alexander Bennett", jobTitle: "Job Title", pipelineStatus: "Pipeline Status"))
}
