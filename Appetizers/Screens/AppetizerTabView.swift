//
//  ContentView.swift
//  Appetizers
//
//  Created by Anubhav Tomar on 28/06/24.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label ("Home", systemImage: "house")
                    .environment(\.symbolVariants, .none) }
                    
            AccountView()
                .tabItem { Label ("Account", systemImage: "person")
                    .environment(\.symbolVariants, .none) }

            OrderView()
                .tabItem { Label ("Order", systemImage: "bag")
                    .environment(\.symbolVariants, .none) }
                .badge(order.items.count)
        }
        .onAppear {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
        
    }
}

#Preview {
    AppetizerTabView()
}
