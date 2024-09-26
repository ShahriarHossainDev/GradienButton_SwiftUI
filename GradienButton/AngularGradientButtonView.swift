//
//  AngularGradientButtonView.swift
//  GradienButton
//
//  Created by Shishir_Mac on 26/9/24.
//

import SwiftUI

struct AngularGradientButtonView: View {
    let global = Global()
    
    var body: some View {
        Button {
            print("Angular Gradient Button Tapped")
        } label: {
            Text("Angular Gradient")
                .bold()
                .frame(width: 160, height: 160)
                .foregroundColor(.white)
                .background(AngularGradient(gradient: global.brandAngularGradient, center: .center))
                .clipShape(Circle())
        }
    }
}

struct AngularGradientButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradientButtonView()
            .previewLayout(.sizeThatFits)
    }
}
