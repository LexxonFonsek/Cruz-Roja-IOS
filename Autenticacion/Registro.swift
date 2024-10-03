import SwiftUI
import FirebaseFirestone


struct Registro: View {
    @ObservedObject var registroViewModel: RegistroViewModel
    
    
    @State var txtNombre: String = ""
    @State var txtApellidom: String = ""
    @State var txtApellidop: String = ""
    @State var txtTelefono: String = ""
    @State var txtNacimiento: String = ""
    @State var txtSexo: String = ""
    @State var txtCURP: String = ""
    @State var txtNSS: String = ""
    @State var isButtonEnabled: Bool = false
    @IBOutlet weak var

  
    
    var body: some View {

        ForEach(RegistroViewModel.datos){ data in
        VStack {
            DismissView()
                .padding(.top, 8)
            Group {
                Text("Bienvenido a")
                Text("Cruz Roja")
                    .bold()
                    .underline()
            }
            .padding(.horizontal, 8)
            .multilineTextAlignment(.center)
            .font(.largeTitle)
            .tint(.primary)
            Group {
                Text("Ingresa tus datos personales para guardarlos en Cruz Roja")
                    .tint(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.top, 2)
                    .padding(.bottom, 32)
                TextField("Ingresa tu Nombre", text: $txtNombre)
                TextField("Ingresa tu Apellido Paterno", text: $txtApellidop)
                TextField("Ingresa tu Apellido Materno", text: $txtApellidom)
                TextField("Ingresa tu Telefono", text: $txtTelefono)
                TextField("Ingresa tu Fecha de Nacimiento", text: $txtCURP)
                TextField("Ingresa tu CURP", text: $txtCURP)
                TextField("Ingresa tu Sexo (M o F)", text: $txtSexo)
                TextField("Ingresa tu Numero de Seguro Social", text: $txtNSS)
                Button(action: {
                RegistroViewModel.saveData(apellidop: txtApellidop, apellidom: txtApellidom, curp: txtCurp, nacimiento: txtNacimiento, nombre: txtNombre, nss: txtNss, sexo: txtSexo, telefono: txtTelefono)
            }, label: {
                Label("Enviar Informacion")
            }) 
                .padding(.top, 18)
                .buttonStyle(.bordered)
                .tint(.blue)
                .disabled(!isButtonEnabled)
                
                if (RegistroViewModel.messageError != nil) {
                Text(RegistroViewModel.messageError!)
                    .bold()
                    .foregroundColor(.red)
            }
            }
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal, 64)
            Spacer()
            }
        }
    
    }
}