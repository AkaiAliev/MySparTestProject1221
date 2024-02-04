//
//  TabView.swift
//  MySparTestProject1221
//
//  Created by Akai on 4/2/24.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTabIndex: Int = 0
    
    init(index: Int) {
        _selectedTabIndex = State(initialValue: index)
    }
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            MainView()
                .tag(0)
                .tabItem {
                    Label("Главная", systemImage: "tree.circle")
                }
            
            CatalogView()
                .tag(1)
                .tabItem {
                    Label("Каталог", systemImage: "square.grid.2x2")
                }
            
            BasketView()
                .tag(2)
                .tabItem {
                    Label("Корзина", systemImage: "cart")
                }
            
            ProfileView()
                .tag(3)
                .tabItem {
                    Label("Профиль", systemImage: "person")
                }
            
        }
    }
}

#Preview {
    MainTabView(index: 0)
}
