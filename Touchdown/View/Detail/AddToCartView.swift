//
//  AddToCartView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 12/05/22.
//

import SwiftUI

struct AddToCartView: View {
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) // Button
        .padding(15)
        .background(
        Color(red: sampleProduct.red, green:sampleProduct.green, blue: sampleProduct.blue)).clipShape(Capsule())
       
    }
}

struct AddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
