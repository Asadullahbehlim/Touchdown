//
//  ContentView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 18/04/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Body
    var body: some View {
    
    ZStack {
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

                FooterView()
                .padding(.horizontal)
            }
            }
            
            
            
        
    } // vstack
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    } // Zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



