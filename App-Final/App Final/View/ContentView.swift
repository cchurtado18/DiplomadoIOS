//
//  ContentView.swift
//  App Final
//
//  Created by Oscar Alvarado on 7/3/25.
//

import SwiftUI

enum ViewStack {
    case login
    case registration
}

struct ContentView: View {
    @State private var presentNextView = false
    @State private var nextView: ViewStack = .login
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("fondo")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                Color.black.opacity(0.5)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Text("Gestor de Actividades")
                        .font(.system(size: 40, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                    Image("uam-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 370)
                        .padding(.top, 24)
                    
                    Text("Explora las actividades de la universidad")
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.top, 12)
                    
                    Spacer()
                    
                    HStack(spacing: 12) {
                        Button {
                            nextView = .login
                            presentNextView.toggle()
                        } label: {
                            Text("Iniciar Sesión")
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(.white)
                        }
                        .frame(width: 160, height: 60)
                        .background(Color("Color-logo"))
                        .cornerRadius(12)
                        
                        Button {
                            nextView = .registration
                            presentNextView.toggle()
                        } label: {
                            Text("Registrarse")
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(.black)
                        }
                        .frame(width: 160, height: 60)
                        .background(Color.white)
                        .cornerRadius(12)
                    }
                    Spacer()
                }
                .padding()
                .navigationDestination(isPresented: $presentNextView) {
                    switch nextView {
                    case .login:
                        LoginnView()
                    case .registration:
                        RegistrationView()
                    }
                }
            }
        }
    }
}



#Preview {
    ContentView()
}

