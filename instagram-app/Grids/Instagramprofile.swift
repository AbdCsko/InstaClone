//
//  Instagramprofile.swift
//  instagram-app
//
//  Created by cissokho abdoulaye on 04/04/2023.
//

import SwiftUI

struct Instagramprofile: View {
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    let imageDimension = UIScreen.main.bounds.width / 3
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                //nav bar
                HStack {
                    
                    Spacer()
                    
                    Text("Super-Héros")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(.blue)
                        .font(.caption)
                    
                    Spacer()
                }
                
                // profile image + stats
                HStack {
                    Image("blackpanther-1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 88, height: 88)
                        .clipShape(Circle())
                    
                    Spacer()
                    // stats
                    HStack(spacing: 32) {
                        VStack(spacing: 2) {
                            Text("\(mesPhotos.count)")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Publication")
                                .font(.caption)
                        }
                        
                        
                        VStack(spacing: 2) {
                           Text("393M")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("followers")
                                .font(.caption)
                        }
                        
                        
                        VStack(spacing: 2) {
                           Text("3,226")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Suivi(e)s")
                                .font(.caption)
                        }
                    }
                    
                    }
                
                // user info
                VStack(alignment: .leading, spacing: 2) {
                    Text("Marvel, etc...")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("blog personnel")
                        .font(.footnote)
                        .foregroundColor(.gray)
                   }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 4)
                
                // common followers view
                HStack(spacing: -10) {
                    Image("H")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                        .overlay(
                           Circle()
                            .stroke(Color.white, lineWidth: 2)
                        )
                    
                    Image("U")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                        .overlay(
                           Circle()
                            .stroke(Color.white, lineWidth: 2)
                        )
                    
                    
                    Image("H")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                        .overlay(
                           Circle()
                            .stroke(Color.white, lineWidth: 2)
                        )
                    
                    HStack(spacing: 2) {
                        Text("Followed by")
                        
                        Text("spiderman, ironman")
                            .fontWeight(.semibold)
                        
                        Text("and")
                        
                        Text("146 other")
                            .fontWeight(.semibold)
                    }
                    .font(.caption)
                    .padding(.leading)
                    
                    
                    Spacer()
                }
                
                //action button
                HStack {
                    
                    Text("Suivi(e)")
                        .foregroundColor(.green)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(width: 120, height: 34)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(.systemGray4))
                        )
                    
                    Text("Écrire")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(width: 120, height: 34)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(.systemGray4))
                        )
                    Text("Adresse e-mail")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(width: 120, height: 34)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(.systemGray4))
                        )
                    
                    Image(systemName: "person.badge.plus")
                        .font(.footnote)
                        .frame(width: 32, height: 34)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(.systemGray4))
                        )
                }
                
                // media type
                HStack {
                    Spacer()
                    
                    Image(systemName: "squareshape.split.3x3")
                        .font(.title2)
                    
                    Spacer()
                    Spacer()
                    
                    Image(systemName: "person.crop.square")
                        .font(.title2)
                    
                     Spacer()
                }
                .foregroundColor(Color(.darkGray))
                .padding(.vertical, 6)
                
                // grid
                
                LazyVGrid(columns: columns, spacing: 0) {
                    ForEach(0 ..< mesPhotos.count, id: \.self) { index in
                        Image(mesPhotos[index])
                            .resizable()
                            .scaledToFill()
                            .frame(width: imageDimension, height: imageDimension)
                            .border(Color.white)
                            .clipped()
                    }
                  }
               }
                .padding(6)
            }
        }
    }
    
    struct Instagramprofile_Previews: PreviewProvider {
        static var previews: some View {
            Instagramprofile()
        }
    }

