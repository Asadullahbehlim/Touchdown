//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 30/04/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - Property
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button (action: {
                shop.selectedProduct = nil
                shop.showingProduct = false
            }, label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white)
                    .font(.title)
               
            })
            Spacer()
                Button(action: {}, label: {
                    Image(systemName: "cart")
                        .foregroundColor(.white)
                        .font(.title)
                
            })
            
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
