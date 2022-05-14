//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 01/05/22.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: - Property
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        } //vstack
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .preferredColorScheme(.dark)
    }
}
