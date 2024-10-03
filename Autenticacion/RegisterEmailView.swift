//
//  RegisterEmailView.swift
//  CRUZ ROJA
//
//  Created by Mac OS lab on 28/05/24.
//

import SwiftUI

struct RegisterEmailView: View {
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    @State var textFieldEmail: String = ""
    @State var textFieldPassword: String = ""
    @State var textFieldConfirmPassword: String = ""
    @State var txtNombre: String = ""
    @State var txtApellidom: String = ""
    @State var txtApellidop: String = ""
    
    init(authenticationViewModel: AuthenticationViewModel) {
        self.authenticationViewModel = authenticationViewModel
    }
    
    var body: some View {
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
                Text("Regístrate para guardar tus datos en Cruz Roja")
                    .tint(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.top, 2)
                    .padding(.bottom, 32)
                TextField("Ingresa tu Nombre", text: $txtNombre)
                TextField("Ingresa tu Apellido Paterno", text: $txtApellidop)
                TextField("Ingresa tu Apellido Materno", text: $txtApellidom)
                TextField("Ingresa tu correo electrónico", text: $textFieldEmail)
                
                SecureField("Ingresa tu contraseña", text: $textFieldPassword)
                SecureField("Confirma tu contraseña", text: $textFieldConfirmPassword)
                
                comprobar(Button("Aceptar")) {
                    authenticationViewModel.createNewUser(email: textFieldEmail, password: textFieldPassword)
                }
                .padding(.top, 18)
                .buttonStyle(.bordered)
                .tint(.blue)
                if let messageError = authenticationViewModel.messageError {
                    Text(messageError)
                        .bold()
                        .font(.body)
                        .foregroundColor(.red)
                        .padding(.top, 20)
                }
            }
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal, 64)
            Spacer()

            func comprobar($textFieldPassword, $textFieldConfirmPassword) -> boolean {
                if $textFieldPassword  == $textFieldConfirmPassword {
                 Button.Aceptar.enabled
                } else {
                    Button.Aceptar.disabled
                }
            }
        }
    }
}