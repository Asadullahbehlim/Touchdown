//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 23/04/22.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: - Property
    
    // MARK: - Body
    var body: some View {
        
        TabView {
            ForEach (players) {
                item in
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
                
            }
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView()
            .preferredColorScheme(.dark)
    }
}
