//
//  RadialGradientButtonView.swift
//  GradienButton
//
//  Created by Shishir_Mac on 26/9/24.
//

import SwiftUI

struct RadialGradientButtonView: View {
    
    let global = Global()
    
    var body: some View {
        Button {
            print("Radial Gradient Button Tapped")
        } label: {
            Text("Radial Gradient")
                .bold()
                .frame(width: 160, height: 160)
                .foregroundColor(.white)
                .background(RadialGradient(gradient: global.brandGradient,
                                           center: .center,
                                           startRadius: 5,
                                           endRadius: 120))
                .clipShape(Circle())
        }
    }
}

struct RadialGradientButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradientButtonView()
            .previewLayout(.sizeThatFits)
    }
}
