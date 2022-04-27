//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 25/04/22.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - property
    
    // MARK: - body
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout,alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView (rotateClockwise: true))  {
                    ForEach(categories) {
                        Category in CategoryItemView(category: Category)
                    }
                }
            }) // grid
            .frame(height: 140)
            .padding(.horizontal, 15)
           .padding(.vertical, 10)
            
        } // Scroll
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
