//
//  ContentView.swift
//  CRUZ ROJA
//  CU VALLES
//  Arturo Emanuel Fonseca Ruiz
//  Created by Mac OS lab on 09/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack {
                Boton()
            }.tabItem {
                Image("cruz_icon")
                Text("Boton Auxilio")
            }
            Login()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Login")
                }
        }.accentColor(.green)
    }
}

    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

