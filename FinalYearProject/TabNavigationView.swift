//
//  TabNavigationView.swift
//  FinalYearProject
//
//  Created by Jiaqi Xie on 08/04/2023.
//

import SwiftUI

struct TabNavigationView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            OnSaleView()
                .tabItem {
                    Image(systemName: "rectangle.grid.2x2.fill")
                    Text("On Sale")
                }
                .tag(0)

            // Add the MessageView as a new tab
            MessageView()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("Messages")
                }
                .tag(1)

            MyAccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("My Account")
                }
                .tag(2)
        }
    }
}
