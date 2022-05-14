//
//  Shop.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 12/05/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
