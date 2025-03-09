//
//  LoginnView.swift
//  App Final
//
//  Created by Oscar Alvarado on 7/3/25.
//

import SwiftUI

enum FocusedField {
    case email
    case password
}

struct LoginnView: View {
    @State private var emailText: String = ""
    @State private var passwordText: String = ""
    @State private var isValidEmail = true
    @State private var isValidPassword = true
    
    var canProceed: Bool {
        Validator.validateEmail(emailText) && Validator.validatePassword(passwordText)
    }
    
    @FocusState private var focusedField: FocusedField?

    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Inicio de Sesion")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(Color("Color-logo"))
                    .padding(.bottom)
                Text("Bienvenido de vuelta !")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 80)

                EmailTetxField(emailText: $emailText, isValidEmail: $isValidEmail)
                
                PasswordTextField(passwordText: $passwordText, isValidPassword: $isValidPassword, validatePassword: Validator.validatePassword, errorText: "Contraseña incorrecta", placeholder: "Contraseña")
                
                HStack {
                    Spacer()
                    Button {
                        //action
                    } label: {
                        Text("Olvido la contraseña?")
                            .foregroundColor(Color("Color-logo"))
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .padding(.trailing)
                    .padding(.vertical)
                        
                }
                
                Button {
                    //action
                } label: {
                    Text("Iniciar Sesión")
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
                    Text("Crear nueva Cuenta")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.gray)
                }
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .cornerRadius(12)
                .padding()
                
                BottomView()
                   
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginnView()
    }
}

struct BottomView: View {
    var body: some View {
        VStack {
            Text("O continua con")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color("Color-logo"))
            
            HStack {
                Button {
                    //Action
                } label: {
                    Image("google-logo")
                }
                .padding()
                .background(Color("lightGray"))
                .cornerRadius(8)
                Button {
                    //Action
                } label: {
                    Image("facebook-logo")
                }
                .padding()
                .background(Color("lightGray"))
                .cornerRadius(8)
                Button {
                    //Action
                } label: {
                    Image("apple-logo")
                }
                .padding()
                .background(Color("lightGray"))
                .cornerRadius(8)
            }
            
        }
    }
}

struct EmailTetxField: View {
    @Binding var emailText: String
    @Binding var isValidEmail: Bool
    
    @FocusState var focusedField: FocusedField?
    
    var body: some View {
        VStack {
            TextField("Email", text: $emailText)
                .focused($focusedField, equals: .email)
                .padding()
                .background(Color("textFieldColor"))
                .cornerRadius(12)
                .background (RoundedRectangle(cornerRadius: 12).stroke(!isValidEmail ? .red : focusedField == .email ? Color("Color-logo"): .white, lineWidth: 3))
                .padding(.horizontal)
            
                .onChange(of: emailText) {
                    newValue in isValidEmail = Validator.validateEmail(newValue)
                }
                .padding(.bottom, isValidEmail ? 16 : 0)
            
            if !isValidEmail {
                HStack {
                    Text("Email invalido")
                        .foregroundColor(.red)
                        .padding(.leading)
                    Spacer()
                }
                .padding(.bottom)
            }
        }
    }
}

struct PasswordTextField: View {
    @Binding var passwordText: String
    @Binding var isValidPassword: Bool
    let validatePassword: (String) -> Bool
    let errorText: String
    let placeholder: String
    
    @FocusState var focusedField: FocusedField?
    
    var body: some View {
        VStack {
            SecureField(placeholder, text: $passwordText)
                .focused($focusedField, equals: .password)
                .padding()
                .background(Color("textFieldColor"))
                .cornerRadius(12)
                .background (RoundedRectangle(cornerRadius: 12).stroke(!isValidPassword ? .red : focusedField == .password ? Color("Color-logo"): .white, lineWidth: 3))
                .padding(.horizontal)
            
                .onChange(of: passwordText) {
                    newValue in isValidPassword = validatePassword(newValue)
                }
            if !isValidPassword {
                HStack {
                    Text(errorText)
                        .foregroundColor(.red)
                        .padding(.leading)
                    Spacer()
                }
            }
        }
    }
}
