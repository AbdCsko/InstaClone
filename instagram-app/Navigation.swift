//
//  navigation Tab Bar.swift
//  instagram-app
//
//  Created by cissokho abdoulaye on 06/04/2023.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image("home")
                    Text("Home")
                }

            searchforsomething()
                .tabItem {
                    Image("search")
                    Text("search")
                    
    
                }
            
            Messagerie()
                .tabItem {
                    Image(systemName: "message")
                    Text("messagerie")
                    
    
                }
            
   
                .tabItem {
                    Image(systemName: "play.rectangle.fill")
                        .resizable()
                    Text("reels")
                    
    
                }
            
            Instagramprofile()
                .tabItem {
                    Image(systemName: "person.fill")
                 Text("Profile")
                }
        }
    }
}


struct HomeViewPreviews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
 
