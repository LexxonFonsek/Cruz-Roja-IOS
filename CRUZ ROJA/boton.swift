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

struct Boton: View {
    
   @StateObject var locationViewModel = LocationViewModel()
   

    var body: some View {
        VStack {
            
            Button(action: {
                print("Boton pulsado")
            
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                    .overlay(
                        Image("cruzboton").renderingMode(.original).frame(width:100, height: 100)
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
        
    



