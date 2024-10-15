import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Top Bar
            HStack {
                Button(action: {
                    // Action for back button
                }) {
                    Image(systemName: "line.horizontal.3")
                        .font(.title)
                        .foregroundColor(.white)
                }
                Spacer()
                Text("Salud")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
            .background(Color(red: 1.0))
            
            // Content
            VStack(spacing: 20) {
                Image(systemName: "calendar")
                    .font(.system(size: 50))
                    .foregroundColor(Color(red: 0.12, green: 0.56, blue: 0.43))
                
                Text("Agendar Consulta")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Divider()
                    .background(Color(red: 0.85, green: 0.71, blue: 0.15))
                    .padding(.horizontal, 40)
                
                Text("Ingresa el nombre de la persona para quien deseas hacer la consulta")
                    .font(.headline)
                
                TextField("ARTURO EMANUEL FONSECA RUIZ", text: .constant(""))
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                Button(action: {
                    // Action for Continuar button
                }) {
                    Text("CONTINUAR")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.12, green: 0.56, blue: 0.43))
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)
            }
            .padding()
            
            Spacer()
            
            // Bottom Navigation
            HStack {
                Spacer()
                Image(systemName: "house.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                Spacer()
                Image(systemName: "location.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                Spacer()
                Image(systemName: "calendar")
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.bottom)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
