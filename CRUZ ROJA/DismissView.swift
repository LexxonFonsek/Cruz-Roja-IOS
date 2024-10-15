//
//  DismissView.swift
//  CRUZ ROJA
//
//  Created by Mac OS lab on 28/05/24.
//

import SwiftUI

struct DismissView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack {
            Spacer()
            Button("Cerrar") {
                dismiss()
            }
            .tint(.black)
            .padding(.trailing, 12)
        }
        .textFieldStyle(.roundedBorder)
        .buttonStyle(.bordered)
    }
}
