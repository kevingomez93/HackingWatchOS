//
//  Project4App.swift
//  Project4 Watch App
//
//  Created by Kevin Gomez on 29/01/2024.
//

import SwiftUI

@main
struct Project4_Watch_AppApp: App {
    var body: some Scene {
            WindowGroup {
                TabView {
                     ContentView()
                     CurrenciesView()
                 }
            }
        }
}
