//
//  HomeView.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 0
    @State private var showCustomers = false
    
    // Sample data for clients
    let clients = [
        ClientData(name: "Client Name", stage: "Insert Pipeline Stage", rating: "5", conversations: "60", profileImage: "person.circle.fill"),
        ClientData(name: "Client Name", stage: "Insert Pipeline Stage", rating: "5", conversations: "60", profileImage: "person.circle.fill"),
        ClientData(name: "Client Name", stage: "Insert Pipeline Stage", rating: "5", conversations: "60", profileImage: "person.circle.fill"),
        ClientData(name: "Client Name", stage: "Insert Pipeline Stage", rating: "5", conversations: "60", profileImage: "person.circle.fill")
    ]
    
    let calendarDays = [
        CalendarDay(day: "9", weekday: "MON", isSelected: false),
        CalendarDay(day: "10", weekday: "TUE", isSelected: false),
        CalendarDay(day: "11", weekday: "WED", isSelected: true),
        CalendarDay(day: "12", weekday: "THU", isSelected: false),
        CalendarDay(day: "13", weekday: "FRI", isSelected: false),
        CalendarDay(day: "14", weekday: "SAT", isSelected: false)
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Dark background
                Color(red: 0.15, green: 0.15, blue: 0.15) // Dark gray background
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    // Header Section with Yellow Background
                    HomeHeaderView()
                    
                    // Calendar Section
                    HomeCalendarView(days: calendarDays)
                    
                    // Schedule Section  
                    HomeScheduleView()
                    
                    // Client List Section
                    HomeClientListView(clients: clients)
                    
                    Spacer()
                    
                    // Bottom Navigation
                    HomeBottomNavigationView(selectedTab: $selectedTab, showCustomers: $showCustomers)
                }
            }
            .navigationDestination(isPresented: $showCustomers) {
                CustomersView()
            }
        }
    }
}

// MARK: - Data Models
struct ClientData {
    let name: String
    let stage: String
    let rating: String
    let conversations: String
    let profileImage: String
}

struct CalendarDay {
    let day: String
    let weekday: String
    let isSelected: Bool
}

// MARK: - Component Views
struct HomeHeaderView: View {
    var body: some View {
        VStack(spacing: 0) {
            // User Profile and Search Section
            VStack(spacing: 15) {
                // User Profile Row
                HStack {
                    // Profile Image
                    ZStack {
                        Circle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 40, height: 40)
                        
                        Image(systemName: "person.fill")
                            .foregroundColor(.gray)
                            .font(.system(size: 20))
                    }
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Hi, Welcome Back")
                            .font(Font.custom("League Spartan", size: 12).weight(.light))
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                
                // Search Bar
                HStack {
                    Image(systemName: "line.3.horizontal.circle")
                        .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                        .font(.system(size: 16))
                    
                    Spacer()
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                        .font(.system(size: 16))
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
                .frame(height: 33)
                .background(Color.white)
                .cornerRadius(23)
                .padding(.horizontal, 20)
            }
            .padding(.vertical, 15)
            .background(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow background
        }
    }
}

struct HomeCalendarView: View {
    let days: [CalendarDay]
    
    var body: some View {
        VStack(spacing: 15) {
            // Calendar days
            HStack(spacing: 8) {
                ForEach(Array(days.enumerated()), id: \.offset) { index, day in
                    VStack(spacing: 5) {
                        Text(day.day)
                            .font(Font.custom("League Spartan", size: 24).weight(.medium))
                            .foregroundColor(day.isSelected ? .white : .black)
                        
                        Text(day.weekday)
                            .font(Font.custom("League Spartan", size: 12).weight(.light))
                            .foregroundColor(day.isSelected ? .white : .black)
                    }
                    .frame(width: 42, height: 64)
                    .background(day.isSelected ? Color(red: 0.98, green: 0.35, blue: 0.08) : Color(red: 0.99, green: 0.78, blue: 0)) // Orange if selected, yellow if not
                    .cornerRadius(18)
                }
            }
            .padding(.horizontal, 20)
            
            // Today header
            HStack {
                Spacer()
                Text("11 Wednesday - Today")
                    .font(Font.custom("League Spartan", size: 12))
                    .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
            }
            .padding(.horizontal, 20)
        }
        .padding(.vertical, 15)
        .background(Color(red: 0.15, green: 0.15, blue: 0.15)) // Dark gray background
    }
}

struct HomeScheduleView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Schedule card
            VStack(spacing: 10) {
                // Time slots
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("9 am")
                            .font(Font.custom("League Spartan", size: 12).weight(.light))
                            .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                        
                        Rectangle()
                            .fill(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                            .frame(height: 0.5)
                    }
                    
                    HStack {
                        Text("10 am")
                            .font(Font.custom("League Spartan", size: 12).weight(.light))
                            .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                        
                        Spacer()
                        
                        // Appointment
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Client Name")
                                .font(Font.custom("League Spartan", size: 14).weight(.medium))
                                .foregroundColor(.white)
                            
                            Text("Energy Consultation Apt")
                                .font(Font.custom("League Spartan", size: 12).weight(.light))
                                .foregroundColor(.black)
                        }
                        .padding(.horizontal, 15)
                        .padding(.vertical, 10)
                        .frame(width: 203, height: 51)
                        .background(Color(red: 0.79, green: 0.84, blue: 1)) // Light blue background
                        .cornerRadius(13)
                    }
                    
                    HStack {
                        Text("11 am")
                            .font(Font.custom("League Spartan", size: 12).weight(.light))
                            .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                        
                        Rectangle()
                            .fill(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                            .frame(height: 0.5)
                    }
                    
                    HStack {
                        Text("12 am")
                            .font(Font.custom("League Spartan", size: 12).weight(.light))
                            .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                        
                        Rectangle()
                            .fill(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                            .frame(height: 0.5)
                    }
                }
            }
            .padding(20)
            .background(Color.white)
            .cornerRadius(20)
            .padding(.horizontal, 20)
        }
        .background(Color(red: 0.15, green: 0.15, blue: 0.15)) // Dark gray background
    }
}

struct HomeClientListView: View {
    let clients: [ClientData]
    
    var body: some View {
        VStack(spacing: 10) {
            ForEach(Array(clients.enumerated()), id: \.offset) { index, client in
                HomeClientCardView(client: client)
            }
        }
        .padding(.horizontal, 20)
        .padding(.top, 15)
        .background(Color(red: 0.15, green: 0.15, blue: 0.15)) // Dark gray background
    }
}

struct HomeClientCardView: View {
    let client: ClientData
    
    var body: some View {
        HStack(spacing: 15) {
            // Profile Image
            ZStack {
                Circle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 57, height: 57)
                
                // Overlay circles for design
                Circle()
                    .fill(Color.red.opacity(0.3))
                    .frame(width: 40, height: 40)
                
                // Profile image placeholder
                Image(systemName: "person.fill")
                    .foregroundColor(.gray)
                    .font(.system(size: 25))
            }
            
            // Client Info
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text(client.name)
                            .font(Font.custom("League Spartan", size: 14).weight(.medium))
                            .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                        
                        Text(client.stage)
                            .font(Font.custom("League Spartan", size: 12).weight(.light))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    // Actions
                    HStack(spacing: 10) {
                        Button(action: {}) {
                            Image(systemName: "questionmark")
                                .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                                .font(.system(size: 14))
                        }
                        .frame(width: 19, height: 19)
                        .background(.white)
                        .cornerRadius(13)
                        
                        Button(action: {}) {
                            Image(systemName: "heart")
                                .foregroundColor(Color(red: 0.98, green: 0.35, blue: 0.08)) // Orange
                                .font(.system(size: 14))
                        }
                        .frame(width: 19, height: 19)
                        .background(.white)
                        .cornerRadius(13)
                    }
                }
                
                // Stats
                HStack {
                    HStack(spacing: 5) {
                        Image(systemName: "star.fill")
                            .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                            .font(.system(size: 10))
                        
                        Text(client.rating)
                            .font(Font.custom("League Spartan", size: 12).weight(.light))
                            .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(.white)
                    .cornerRadius(13)
                    
                    HStack(spacing: 5) {
                        Image(systemName: "message")
                            .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                            .font(.system(size: 10))
                        
                        Text(client.conversations)
                            .font(Font.custom("League Spartan", size: 12).weight(.light))
                            .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0)) // Yellow
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(.white)
                    .cornerRadius(13)
                    
                    Spacer()
                }
            }
        }
        .padding(15)
        .background(Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.98)) // Dark gray card background
        .cornerRadius(17)
    }
}

struct HomeBottomNavigationView: View {
    @Binding var selectedTab: Int
    @Binding var showCustomers: Bool
    
    var body: some View {
        HStack {
            HomeTabBarButton(icon: "house", isSelected: selectedTab == 0) {
                selectedTab = 0
            }
            
            Spacer()
            
            HomeTabBarButton(icon: "message", isSelected: selectedTab == 1) {
                selectedTab = 1
            }
            
            Spacer()
            
            HomeTabBarButton(icon: "person.3", isSelected: selectedTab == 2) {
                selectedTab = 2
                showCustomers = true
            }
            
            Spacer()
            
            HomeTabBarButton(icon: "calendar", isSelected: selectedTab == 3) {
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

struct HomeTabBarButton: View {
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
    HomeView()
}
