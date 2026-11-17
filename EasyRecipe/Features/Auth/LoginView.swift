//
//  LoginView.swift
//  EasyRecipe
//
//  Created by Alumnos on 17/11/26.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var isPasswordHidden = true
    
    var body: some View {
        VStack (spacing: 16){
            
            
            TextField("Email", text: $email)
                .frame(height: 24)
                .padding()
                .background(.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal)
            
            HStack {
                Group {
                    if (isPasswordHidden) {
                        SecureField("Password", text: $password)
                    } else {
                        TextField("Password", text: $password)
                    }
                }
                Button {
                    isPasswordHidden.toggle()
                } label: {
                    Image(systemName: isPasswordHidden ? "eye.slash" : "eye")
                }

                
            }
            .frame(height: 24)
            .padding()
            .background(.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.horizontal)
            
            Button {
                
            } label: {
                Text("Sign in")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.green)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.horizontal)
            }
        }
        .tint(.green)
        
    }
}

#Preview {
    LoginView()
}
