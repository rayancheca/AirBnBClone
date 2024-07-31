//
//  MainTabView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/17/24.
//

import SwiftUI

struct MainTabView: View 
{
    var body: some View 
    {
        TabView
        {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Wishlits", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
            
        } // end tabview
    } // end body
} // end struct

#Preview {
    MainTabView()
}
