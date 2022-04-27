//
//  SectionView.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 25/04/22.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Property
    @State var rotateClockwise: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
        Spacer()
        Text("Categories".uppercased())
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .rotationEffect(Angle(degrees: rotateClockwise ? 90: -90))
        Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
}
}
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
           .previewLayout(.fixed(width: 120, height: 240))
           .padding()
            .background(colorBackground)
    }
}

