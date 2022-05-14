//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Asadullah Behlim on 18/04/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
