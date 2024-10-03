import SwiftUI


struct HomeView: View {
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    @StateObject var registroViewModel: RegistroViewModel = RegistroViewModel()
    
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
                List {
                                NavigationLink("Boton de Auxilio",
                                               destination: Boton())
                    
                                NavigationLink("Consultas",
                                               destination: Consulta())
                                
                                NavigationLink("Informacion",
                                   destination: Informacion())
                    
                                NavigationLink("Dengue",
                                   destination: Dengue())
                            }
            }
            .navigationBarTitleDisplayMode(.automatic)
                        .navigationBarHidden(false)
                        
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
