//
//  ContentView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 18/04/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
    
    ZStack {
        if shop.showingProduct == false && shop.selectedProduct == nil
        {
            VStack(spacing: 0) {
            NavigationBarView()
           .padding(.horizontal, 15)
           .padding(.bottom)
           .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
           .background(.white)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                Spacer()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                    FeaturedItemView()
                .frame(height: UIScreen.main.bounds.width / 1.595)
            // This will fix the layout rendering priority issue by using the screen's aspect ratio.
              //     .frame(height:300)
                        
                CategoryGridView()
                TitleView(title: "Helmet")

            LazyVGrid(columns: gridLayout, spacing: 15, content: {
              ForEach(products) { product in
               ProductItemView(product: product)
                .onTapGesture {
                    shop.selectedProduct = product
                    shop.showingProduct = true
                      }
                }
            }) // lazyvgrid
            .padding(15)
                        
                TitleView(title: "Brands")
                BrandGridView()
                        
                FooterView()
                .padding(.horizontal)
                }
                }
        } // vstack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } else {
            ProductDetailView()
        }
    } // Zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



