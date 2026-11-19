//
//  OnBoardingView.swift
//  EasyRecipe
//
//  Created by Alumnos on 17/11/26.
//

import SwiftUI

struct OnBoardingView: View {
    
    @State private var showLogin = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                
                GeometryReader { geometry in
                    Image("background")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                }
                
                LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack (spacing: 16){
                    Text("Welcome to Easy Recipe")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                                    
                    Button {
                        showLogin.toggle()
                    } label: {
                        Text("Continue")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.green)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.horizontal)
                    }
                }
                
                
            }
            .navigationDestination(isPresented: $showLogin) {
                LoginView()
            }
        }
        
        
    }
}

#Preview {
    OnBoardingView()
}
