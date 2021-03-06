//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 01/05/22.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - Property
    @EnvironmentObject var shop: Shop
    @State private var isAnimating: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading, spacing: 6) {
                Text("price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ??   sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading
                    )
                
            } // vstack
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        } // Hstack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
        
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .padding()
         //   .preferredColorScheme(.dark)
    }
}
