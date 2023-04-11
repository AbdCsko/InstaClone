//
//  messagerieDetail.swift
//  instagram-app
//
//  Created by cissokho abdoulaye on 11/04/2023.
//

import SwiftUI

struct messagerieDetail: View {
    var image = "A"
    var name = "uo h"
    var message = "oubg"
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(50)
            
            VStack {
                Text(name)
                    .padding(.trailing, 53)
                
                Text(message)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            Image(systemName: "camera")
                .padding(.trailing)
        }
    }
        
}

struct messagerieDetail_Previews: PreviewProvider {
    static var previews: some View {
        messagerieDetail()
    }
}
