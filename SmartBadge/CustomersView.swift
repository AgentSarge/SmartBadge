//
//  CustomersView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct CustomersView: View {
    @State private var selectedSortOption = "A→Z"
    @State private var selectedTab = 2 // Customers tab
    @State private var selectedCustomer: CustomerInfo? = nil
    @Environment(\.dismiss) private var dismiss
    
    let sortOptions = ["A→Z", "Date", "Status", "Priority", "Recent"]
    
    let customers = [
        CustomerInfo(name: "Alexander Bennett", jobTitle: "Job title", pipelineStatus: "Pipeline Status"),
        CustomerInfo(name: "Alexander Bennett", jobTitle: "Job title", pipelineStatus: "Pipeline Status"),
        CustomerInfo(name: "Alexander Bennett", jobTitle: "Job title", pipelineStatus: "Pipeline Status"),
        CustomerInfo(name: "Alexander Bennett", jobTitle: "Job title", pipelineStatus: "Pipeline Status")
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Dark background
                AppTheme.primaryBackground
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    // Header Section
                    CustomersHeaderView(onBack: {
                        dismiss()
                    })
                    
                    // Sort Section
                    CustomersSortView(
                        selectedOption: $selectedSortOption,
                        options: sortOptions
                    )
                    
                    // Customer List
                    ScrollView {
                        LazyVStack(spacing: 15) {
                            ForEach(Array(customers.enumerated()), id: \.offset) { index, customer in
                                CustomersCardView(customer: customer) {
                                    selectedCustomer = customer
                                }
                            }
                        }
                        .padding(.horizontal, 30)
                        .padding(.top, 20)
                    }
                    
                    Spacer()
                    
                    // Bottom Navigation
                    CustomersBottomNavView(selectedTab: $selectedTab)
                }
            }
            .navigationBarHidden(true)
            .navigationDestination(item: $selectedCustomer) { customer in
                CustomerInfoView(customer: customer)
            }
        }
    }
}

// MARK: - Data Model
struct CustomerInfo: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let jobTitle: String
    let pipelineStatus: String
}

// MARK: - Component Views

struct CustomersHeaderView: View {
    let onBack: () -> Void
    
    var body: some View {
        HStack {
            Button(action: onBack) {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color(red: 0.98, green: 0.35, blue: 0.08)) // Orange color
                    .font(.system(size: 18, weight: .medium))
            }
            
            Spacer()
            
            Text("Customers")
                .font(Font.custom("League Spartan", size: 24).weight(.semibold))
                .foregroundColor(.white)
            
            Spacer()
            
            HStack(spacing: 12) {
                Button(action: {}) {
                    Circle()
                        .fill(Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.96))
                        .frame(width: 21.28, height: 21.28)
                        .overlay(
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                        )
                }
                
                Button(action: {}) {
                    Circle()
                        .fill(Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.96))
                        .frame(width: 21.28, height: 21.28)
                        .overlay(
                            Image(systemName: "arrow.up.arrow.down")
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                        )
                }
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
    }
}

struct CustomersSortView: View {
    @Binding var selectedOption: String
    let options: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Sort by")
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

struct CustomersCardView: View {
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
                    Text(customer.name)
                        .font(Font.custom("League Spartan", size: 15).weight(.medium))
                        .foregroundColor(.white)
                    
                    Text(customer.jobTitle)
                        .font(Font.custom("League Spartan", size: 13).weight(.light))
                        .foregroundColor(.white)
                    
                    Text(customer.pipelineStatus)
                        .font(Font.custom("League Spartan", size: 13).weight(.light))
                        .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow text
                    
                    Spacer()
                }
                
                Spacer()
                
                // Action Buttons Section
                VStack(spacing: 8) {
                    // Info Button
                    Button(action: {}) {
                        Text("Info")
                            .font(Font.custom("League Spartan", size: 15))
                            .foregroundColor(.black)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 4)
                            .background(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow background
                            .cornerRadius(18)
                    }
                    
                    // Action Circles
                    HStack(spacing: 8) {
                        ForEach(0..<4) { _ in
                            Button(action: {}) {
                                Circle()
                                    .fill(Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.96))
                                    .frame(width: 21, height: 21)
                            }
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
        .buttonStyle(PlainButtonStyle())
    }
}

struct CustomersBottomNavView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            CustomersTabButton(icon: "house", isSelected: selectedTab == 0) {
                selectedTab = 0
            }
            
            Spacer()
            
            CustomersTabButton(icon: "message", isSelected: selectedTab == 1) {
                selectedTab = 1
            }
            
            Spacer()
            
            CustomersTabButton(icon: "person.3", isSelected: selectedTab == 2) {
                selectedTab = 2
            }
            
            Spacer()
            
            CustomersTabButton(icon: "calendar", isSelected: selectedTab == 3) {
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

struct CustomersTabButton: View {
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
    CustomersView()
}
