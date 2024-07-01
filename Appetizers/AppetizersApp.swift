//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Anubhav Tomar on 28/06/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
