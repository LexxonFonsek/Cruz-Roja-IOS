//
//  NavigationControls.swift
//  CRUZ ROJA
//
//  Created by Mac OS lab on 21/05/24.
//

import SwiftUI

struct NavigationControls: View {
    @EnvironmentObject var coordinator: ColorNavigationManager
    
    var body: some View {
        VStack(alignment: .center, spacing: 16.0) {
            Button(action: coordinator.presentImage) {
                Text("Ir a la vista ImageView")
                    .font(.callout)
            }
            
            Spacer()
            
            Button(action: coordinator.presentRandomColor) {
                Text("Ir a la vista ColorView")
                    .font(.callout)
            }
            
            Spacer()
            
            Button(action: coordinator.popToRootView) {
                Text("Volver al inicio")
                    .font(.callout)
            }
        }
    }
}

struct NavigationControls_Previews: PreviewProvider {
    static var previews: some View {
        NavigationControls()
    }
}

