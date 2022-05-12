//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 30/04/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack {
            Button (action: {}, label: {
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
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
