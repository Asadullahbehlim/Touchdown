//
//  Constant.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 23/04/22.
//

import SwiftUI

//Data

let players : [Player] = Bundle.main.decode("player.json")
let categories : [Category] = Bundle.main.decode("category.json")
let products : [Product] = Bundle.main.decode("product.json")
let brands : [Brand] = Bundle.main.decode("brand.json")
let sampleProduct : Product = products[0]
//Color

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//Layout
let columnSpacing: CGFloat = 10
let rowSpacing : CGFloat =  10
var gridLayout : [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//Ux

//Api

//Image

// Font

// String

// Misc
