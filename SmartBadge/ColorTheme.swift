//
//  ColorTheme.swift
//  SmartBadge
//
//  Created by Self Labs on 8/24/25.
//

import SwiftUI

// MARK: - Color Theme Extension
extension Color {
    // Primary colors from the palette
    static let eerieBlack = Color(red: 38/255, green: 38/255, blue: 38/255)
    static let eerieBlack2 = Color(red: 23/255, green: 23/255, blue: 23/255)
    static let onyx = Color(red: 64/255, green: 64/255, blue: 64/255)
    static let jonquil = Color(red: 253/255, green: 200/255, blue: 0/255)
    static let giantsOrange = Color(red: 250/255, green: 90/255, blue: 21/255)
    static let cadetGray = Color(red: 161/255, green: 161/255, blue: 161/255)
}

// MARK: - App Theme Structure
struct AppTheme {
    // Background colors
    static let primaryBackground = Color.eerieBlack2
    static let secondaryBackground = Color.eerieBlack
    static let cardBackground = Color.onyx
    
    // Text colors
    static let primaryText = Color.white
    static let secondaryText = Color.cadetGray
    static let accentText = Color.jonquil
    static let darkText = Color.eerieBlack
    
    // Button colors
    static let primaryButton = Color.jonquil
    static let secondaryButton = Color.giantsOrange
    static let buttonText = Color.eerieBlack2
    
    // Border and accent colors
    static let border = Color.cadetGray.opacity(0.3)
    static let accent = Color.giantsOrange
    
    // Status colors
    static let success = Color.jonquil
    static let warning = Color.giantsOrange
    static let error = Color.red
    
    // MARK: - Gradient Definitions
    static let primaryGradient = LinearGradient(
        colors: [Color.eerieBlack2, Color.eerieBlack],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    static let accentGradient = LinearGradient(
        colors: [Color.jonquil, Color.giantsOrange],
        startPoint: .leading,
        endPoint: .trailing
    )
    
    static let cardGradient = LinearGradient(
        colors: [Color.onyx, Color.eerieBlack],
        startPoint: .top,
        endPoint: .bottom
    )
}

// MARK: - Theme Modifiers
struct ThemedCardStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(AppTheme.cardBackground)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(AppTheme.border, lineWidth: 1)
            )
            .cornerRadius(12)
    }
}

struct ThemedButtonStyle: ViewModifier {
    let isPrimary: Bool
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(isPrimary ? AppTheme.buttonText : AppTheme.primaryText)
            .padding(.horizontal, 24)
            .padding(.vertical, 12)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(isPrimary ? AppTheme.primaryButton : AppTheme.secondaryButton)
            )
    }
}

// MARK: - View Extensions
extension View {
    func themedCard() -> some View {
        self.modifier(ThemedCardStyle())
    }
    
    func themedButton(isPrimary: Bool = true) -> some View {
        self.modifier(ThemedButtonStyle(isPrimary: isPrimary))
    }
}
