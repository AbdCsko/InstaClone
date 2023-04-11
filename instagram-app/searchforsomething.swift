//
//  sampledata.swift
//  instagram-app
//
//  Created by cissokho abdoulaye on 11/04/2023.
//

import SwiftUI

struct searchforsomething: View {
    private var listOfuser = userList
    @State var searchText = ""
    
    
    var body: some View {
        NavigationView {
            VStack() {
                    ScrollView(.horizontal,  showsIndicators: false) {
                        HStack {
                        ForEach(message, id: \.self) { user in
                               
                                    Story(image: user.image, name: user.nom)
                                }

                        }
                    }
            List {
                
                ForEach(message, id: \.self) { user in
                        HStack {
                            messagerieDetail(image: user.image, name: user.nom, message: user.message)
                        }

                }
                
            }
            .searchable(text: $searchText)
            .navigationTitle("Users")
            .listStyle(SidebarListStyle())
                
        }
            
        }
    }
    
    var users: [String] {
        let lcUsers = listOfuser.map { $0.lowercased() }
        
        return searchText == "" ? lcUsers : lcUsers.filter {
            $0.contains(searchText.lowercased())
        }
    }
    
    struct searchforsomething_Previews: PreviewProvider {
        static var previews: some View {
            searchforsomething()
        }
    }
}
 
struct Story: View {
    var image: String = "blackpanther-2"
    var name: String = "Willie Yam"
    var color: Color = .blue
    
    
    var body: some View {
        VStack {
            if name.hasPrefix("S") {
                
                VStack {
                    
                    Image(image)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .cornerRadius(50)
                }
                .overlay(
                    Circle()
                    
                        .stroke(LinearGradient(colors: [.green]  , startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
                        .frame(width: 68, height: 68)
                )
                .frame(width: 70, height: 70)
                
                Text(name)
                    .font(.caption)
            }
            else {
                VStack {
                    ZStack{
                        
                        Image(image)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(50)
                        Circle()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.white)
                            .position(x: 50, y: 60)
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(.green)
                            .position(x: 50, y: 60)
                    }
                   
                }
                
                .frame(width: 70, height: 70)
                
                Text(name)
                    .font(.caption)
            }
        }
    }
}
