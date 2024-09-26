//
//  LinearGradientOverlayButtonView.swift
//  GradienButton
//
//  Created by Shishir_Mac on 26/9/24.
//

import SwiftUI

struct LinearGradientOverlayButtonView: View {
    
    let global = Global()
    
    var body: some View {
        Button {
            print("Linear Gradient Button Tapped")
        } label: {
            Text("Linear Gradient")
                .bold()
                .frame(width: 250, height: 50)
                .foregroundColor(.red)
                .overlay(Capsule().stroke(LinearGradient(gradient: global.brandAngularGradient,
                                                         startPoint: .leading,
                                                         endPoint: .trailing),
                         lineWidth: 5))
        }
    }
}

struct LinearGradientOverlayButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradientOverlayButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
