import SwiftUI
import CoreLocation
import MapKit

struct HomeView: View {
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    @StateObject var locationViewModel = LocationViewModel()
    
    var body: some View {
        NavigationView {
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
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("CRUZ ROJA")
            .toolbar {
                Button("Cerrar Sesion") {
                    authenticationViewModel.logout()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(authenticationViewModel: AuthenticationViewModel())
    }
}
