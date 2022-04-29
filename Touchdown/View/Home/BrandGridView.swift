//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 29/04/22.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
            ForEach(brands) { brand in
              BrandItemView(brand: brand)
                
            }
          }) //grid
          .frame(height: 200)
          .padding(15)
        })  //scroll
        
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
