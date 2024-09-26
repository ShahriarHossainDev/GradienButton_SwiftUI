//
//  ContentView.swift
//  GradienButton
//
//  Created by Shishir_Mac on 26/9/24.
//

import SwiftUI

struct ContentView: View {
    
    var brandGradient = Gradient(colors: [Color(.systemTeal), Color(.systemPurple)])
    var brandAngularGradient = Gradient(colors: [Color(.systemTeal), Color(.systemPurple), Color(.systemTeal), Color(.systemMint)])
    
    var body: some View {
        VStack(spacing: 60) {
            
            // Linear Gradient
            Button {
                print("Linear Gradient Button Tapped")
            } label: {
                Text("Linear Gradient")
                    .bold()
                    .frame(width: 250, height: 50)
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: brandGradient,
                                               startPoint: .leading,
                                               endPoint: .trailing))
                    .clipShape(Capsule())
            }
            
            Button {
                print("Linear Gradient Button Tapped")
            } label: {
                Text("Linear Gradient")
                    .bold()
                    .frame(width: 250, height: 50)
                    .foregroundColor(.white)
                    .background(RadialGradient(gradient: brandGradient,
                                               center: .top,
                                               startRadius: 5,
                                               endRadius: 120))
                    .clipShape(Capsule())
            }
            
            // Linear Gradient Overlay
            LinearGradientOverlayButtonView()
            
            // Radial Gradient
            RadialGradientButtonView()
            
            // Angular Gradient
            AngularGradientButtonView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
