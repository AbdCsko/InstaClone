//
//  Gridstutorial.swift
//  instagram-app
//
//  Created by cissokho abdoulaye on 04/04/2023.
//

import SwiftUI

struct Gridstutorial: View {
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible()),]
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0 ..< 100, id: \.self) { index in
                    Rectangle()
                        .frame(height: 50)
                }
            }
        }
    }
}

struct Gridstutorial_Previews: PreviewProvider {
    static var previews: some View {
        Gridstutorial()
    }
}
