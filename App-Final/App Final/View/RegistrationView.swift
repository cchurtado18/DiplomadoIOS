//
//  RegistrationView.swift
//  App Final
//
//  Created by Oscar Alvarado on 7/3/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var emailText: String = ""
    @State private var passwordText: String = ""
    @State private var confirmPasswordText: String = ""
    @State private var isValidEmail = true
    @State private var isValidPassword = true
    @State private var isConfirmPasswordValid = true
    
    var canProceed: Bool {
        Validator.validateEmail(emailText) && Validator.validatePassword(passwordText) && validateConfirm(confirmPasswordText)
    }
    
    @FocusState private var focusedField: FocusedField?
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Crear Cuenta")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(Color("Color-logo"))
                    .padding(.bottom)
                    .padding(.top, 48)
                Text("Crea una nueva cuenta para explorar todo los eventos universitarios!")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 80)

                EmailTetxField(emailText: $emailText, isValidEmail: $isValidEmail)
                
                PasswordTextField(passwordText: $passwordText, isValidPassword: $isValidPassword, validatePassword: Validator.validatePassword, errorText: "Contraseña Invalida", placeholder: "Contraseña")
                
                PasswordTextField(passwordText: $confirmPasswordText, isValidPassword: $isConfirmPasswordValid, validatePassword: validateConfirm, errorText: "Contraseña no coincide", placeholder: "Confirmar Contraseña")
                    .padding(.top)
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Text("Registrarse")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                }
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .background(Color("Color-logo"))
                .cornerRadius(12)
                .padding(.horizontal)
                .opacity(canProceed ? 1 : 0.5)
                .disabled(!canProceed)
            
                
                Button {
                    //action
                } label: {
                    Text("Ya tengo una Cuenta")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.gray)
                }
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .cornerRadius(12)
                .padding()
                
                BottomView()
                Spacer()
                   
            }
        }
    }
    
    func validateConfirm(_ password: String) -> Bool{
        passwordText == password
    }
}

#Preview {
    RegistrationView()
}
