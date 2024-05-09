//
//  ContentView.swift
//  CRUZ ROJA
//  CU VALLES
//  Arturo Emanuel Fonseca Ruiz
//  Created by Mac OS lab on 09/04/24.
//

import SwiftUI
import CoreLocation
import MapKit

struct ContentView: View {
    
   @StateObject var locationViewModel = LocationViewModel()
   

    var body: some View {
        VStack {
            Button(action: {
                print("Boton pulsado")
                NavigationLink(destination: 200.39.169.50)
            }, label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                    .overlay(
                        Image("cruif").renderingMode(.original).frame(width:100, height: 100)
                            .foregroundColor(.white)
                            .font(.system(size: 70, weight: .bold))
                    )
            })
            
            Text("CRUZ ROJA")
                .font(.body)
                .fontWeight(.black)
                .foregroundColor(Color.red)
                .padding(50.0)
            Text("BOTON DE AUXILIO")
                .font(.body)
                .fontWeight(.black)
                .foregroundColor(Color.red)
                .padding(0.0)
            
        }
        
        .padding()
        Map(coordinateRegion: $locationViewModel.userLocation, showsUserLocation: true)
            .ignoresSafeArea()
        if locationViewModel.userHasLocation{
            Text("Localizacion Aceptada")
                .bold()
                .padding(.top, 12)
            Link("Pulsa para cambiar la autorizacion de Localización ", destination: URL(string: UIApplication.openSettingsURLString)!)
                .padding(32)
        }else{
            Text("Localizacion NO Aceptada")
                .bold()
                .padding(.top, 12)
            Link("Pulsa para cambiar la autorizacion de Localizacion ", destination: URL(string: UIApplication.openSettingsURLString)!)
                .padding(32)
        }
        }
    }
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
