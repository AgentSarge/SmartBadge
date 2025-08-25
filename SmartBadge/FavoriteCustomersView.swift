//
//  FavoriteCustomersView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct FavoriteCustomersView: View {
    @State private var selectedSortOption = "A→Z"
    @State private var selectedTab = 2
    @Environment(\.dismiss) private var dismiss
    
    let sortOptions = ["A→Z", "Date", "Status", "Priority", "Recent"]
    
    let favoriteCustomers = [
        CustomerInfo(name: "Olivia Turner", jobTitle: "Pipeline Stage", pipelineStatus: "Favorite"),
        CustomerInfo(name: "Olivia Turner", jobTitle: "Pipeline Stage", pipelineStatus: "Favorite"),
        CustomerInfo(name: "Olivia Turner", jobTitle: "Pipeline Stage", pipelineStatus: "Favorite"),
        CustomerInfo(name: "Olivia Turner", jobTitle: "Pipeline Stage", pipelineStatus: "Favorite")
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Dark background
                Color(red: 0.15, green: 0.15, blue: 0.15) // Dark gray background
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    // Header Section
                    FavoriteHeaderView(onBack: {
                        dismiss()
                    })
                    
                    // Sort Section
                    FavoriteSortView(
                        selectedOption: $selectedSortOption,
                        options: sortOptions
                    )
                    
                    // Customer List
                    ScrollView {
                        LazyVStack(spacing: 15) {
                            ForEach(Array(favoriteCustomers.enumerated()), id: \.offset) { index, customer in
                                FavoriteCustomerCardView(customer: customer) {
                                    // Handle customer selection
                                }
                            }
                        }
                        .padding(.horizontal, 30)
                        .padding(.top, 20)
                    }
                    
                    Spacer()
                    
                    // Bottom Navigation
                    FavoriteBottomNavView(selectedTab: $selectedTab)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

// MARK: - Component Views

struct FavoriteHeaderView: View {
    let onBack: () -> Void
    
    var body: some View {
        HStack {
            Button(action: onBack) {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow color
                    .font(.system(size: 18, weight: .medium))
            }
            
            Spacer()
            
            Text("Favorite")
                .font(Font.custom("League Spartan", size: 24).weight(.semibold))
                .foregroundColor(.white)
            
            Spacer()
            
            HStack(spacing: 12) {
                Button(action: {}) {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 21.28, height: 21.28)
                        .overlay(
                            Image(systemName: "questionmark")
                                .foregroundColor(.gray)
                                .font(.system(size: 10))
                        )
                }
                
                Button(action: {}) {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 21.28, height: 21.28)
                        .overlay(
                            Image(systemName: "gearshape")
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

struct FavoriteSortView: View {
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
                
                // Star icon (gray)
                Button(action: {}) {
                    Image(systemName: "star")
                        .foregroundColor(Color(red: 0.63, green: 0.63, blue: 0.63))
                        .font(.system(size: 12))
                        .frame(width: 22, height: 21)
                }
                
                // Heart icon (filled orange - active filter)
                Button(action: {}) {
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color(red: 0.98, green: 0.35, blue: 0.08))
                        .font(.system(size: 12))
                        .frame(width: 22, height: 21)
                }
                
                // Additional filter circles
                ForEach(0..<2) { _ in
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

struct FavoriteCustomerCardView: View {
    let customer: CustomerInfo
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 20) {
                // Profile Image Section
                ZStack {
                    // Main profile circle
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 107, height: 107)
                    
                    // Overlay circles for design
                    Circle()
                        .fill(Color.red.opacity(0.3))
                        .frame(width: 79, height: 79)
                    
                    // Profile image placeholder
                    Image(systemName: "person.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 40))
                }
                
                // Customer Info Section
                VStack(alignment: .leading, spacing: 8) {
                    // Advised Action
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                            .font(.system(size: 12))
                        Text("Insert Advised Action")
                            .font(Font.custom("League Spartan", size: 10).weight(.light))
                            .foregroundColor(.green)
                        Spacer()
                    }
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(customer.name)
                                .font(Font.custom("League Spartan", size: 15).weight(.medium))
                                .foregroundColor(.white)
                            
                            Text(customer.jobTitle)
                                .font(Font.custom("League Spartan", size: 13).weight(.light))
                                .foregroundColor(Color.gray)
                        }
                        
                        Spacer()
                        
                        // Favorite Indicator (filled yellow heart)
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0))
                            .font(.system(size: 12))
                    }
                    
                    Spacer()
                    
                    // Action Buttons Section
                    VStack(spacing: 8) {
                        // Contact Button
                        Button(action: {}) {
                            Text("Contact")
                                .font(Font.custom("League Spartan", size: 15))
                                .foregroundColor(.white)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 4)
                                .background(Color(red: 0.98, green: 0.35, blue: 0.08)) // Orange background
                                .cornerRadius(18)
                        }
                        
                        // No additional action circles in Favorite view
                    }
                }
            }
            .padding(20)
            .background(
                RoundedRectangle(cornerRadius: 17)
                    .fill(Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.98)) // Dark gray card background
            )
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct FavoriteBottomNavView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            FavoriteTabButton(icon: "house", isSelected: selectedTab == 0) {
                selectedTab = 0
            }
            
            Spacer()
            
            FavoriteTabButton(icon: "message", isSelected: selectedTab == 1) {
                selectedTab = 1
            }
            
            Spacer()
            
            FavoriteTabButton(icon: "person.3", isSelected: selectedTab == 2) {
                selectedTab = 2
            }
            
            Spacer()
            
            FavoriteTabButton(icon: "calendar", isSelected: selectedTab == 3) {
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

struct FavoriteTabButton: View {
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
    FavoriteCustomersView()
}
