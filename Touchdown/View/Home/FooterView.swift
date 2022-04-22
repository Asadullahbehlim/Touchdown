//
//  FooterView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 22/04/22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
        Text("We offer the most cutting edge, comfortable, lightweight and durable footall helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
            
            /// - Parameter renderingMode: The mode SwiftUI uses to render images.
            /// - Returns: A modified image
            
            Text("CopyRight © Asad \n All right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
        } // vstack
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
