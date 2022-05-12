//
//  QuantityFavView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 12/05/22.
//

import SwiftUI

struct QuantityFavView: View {
    // MARK: - Property
    @State private var counter: Int = 0
   
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
                 
            Text ("\(counter)")
                    .fontWeight(.semibold)
                    .frame(minWidth: 36)
                
                Button(action: {
                    if counter < 100  {
                        counter += 1
                    }
                    
                }, label: {
                    Image(systemName: "plus.circle")
                })
                 Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "heart.circle")
                        .foregroundColor(.pink)
                })
                
                
            } //Hstack
                .font(.system(.title, design: .rounded))
                .foregroundColor(.black)
                .imageScale(.large)
            
            }
        
    }

struct QuantityFavView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavView()
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
