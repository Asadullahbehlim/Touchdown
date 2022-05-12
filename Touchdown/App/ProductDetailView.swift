//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 29/04/22.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Property
    
    // MARK: - Body
    
    var body: some View { 
        
        VStack(alignment: .leading, spacing: 5, content: {
            
          //   NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            
            // Detail Top Part
           TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // Detail Bottom Part
            VStack(alignment: .center, spacing:0 , content: {
                
                // Ratings + Sizes
                
                
                // Description
                ScrollView(.vertical, showsIndicators: false)  {

                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)

                } // ScrollView
                // Quantity + Favourite
                // Add to cart
                Spacer()

            })
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape())
            .padding(.top, -110)
            
            )
            
        }) // Vstack Outer Part
       
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color (
                red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
        .previewLayout(.sizeThatFits)
          .previewLayout(.fixed(width: 375, height: 812))

    }
}
