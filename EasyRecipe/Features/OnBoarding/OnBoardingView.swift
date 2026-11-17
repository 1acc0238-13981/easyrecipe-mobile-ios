//
//  OnBoardingView.swift
//  EasyRecipe
//
//  Created by Alumnos on 17/11/26.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
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
        
    }
}

#Preview {
    OnBoardingView()
}
