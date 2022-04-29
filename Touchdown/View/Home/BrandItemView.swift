//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 29/04/22.
//

import SwiftUI

struct BrandItemView: View {
    let brand: Brand
    var body: some View {
        
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
}
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
    }
}
