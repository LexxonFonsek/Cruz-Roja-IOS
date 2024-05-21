//
//  ColorNavigationManager.swift
//  CRUZ ROJA
//
//  Created by Mac OS lab on 21/05/24.
//

import SwiftUI
import Foundation
import SwiftUI

final class ColorNavigationManager: NavigationManager, ObservableObject {
    /// Diferentes vistas a las que se puede navegar
    /// desde el `NavigationStack` que gestiona este manager
    enum Destination: Hashable, Codable {
        case color(value: Color)
        case image
    }
    
    @Published var navigationPath = NavigationPath()
    
    func presentRandomColor() {
        let colors: [Color] = [
            .red,
            .blue,
            .indigo,
            .mint,
            .orange,
            .green,
            .teal
        ]
        
        let randomIndex = Int.random(in: 0..<colors.count)
        self.navigationPath.append(Destination.color(value: colors[randomIndex]))
    }
    
    func presentImage() {
        self.navigationPath.append(Destination.image)
    }
    
    
}

