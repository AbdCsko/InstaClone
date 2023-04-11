import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack(spacing: 0.0) {
            Header()
            
            ScrollView(.vertical, showsIndicators: false) {
                Stories()
                
                Divider()
                
                Post()
                
                Post(image: "blackpanther-1", description: "nouveau costume vous aimez ?")
                
                Post(image: "blackpanther-3", description: "nous combattons avec force et honneur 🫡")
                
            }
        }
    }
  
    struct Header: View {
        var body: some View {
            HStack {
                Image("logo")
                Image(systemName: "chevron.down")
                
                Spacer()
                
                HStack(spacing: 20.0) {
                    Image(systemName: "heart")
                    Button {
                        
                    } label: {
                            Image(systemName: "paperplane")
                            .foregroundColor(.black)
                    }

                }
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 3)
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
                        
                        Image(image)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(50)
                    }
                    .overlay(
                        Circle()
                        
                            .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange]  , startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
                            .frame(width: 68, height: 68)
                    )
                    .frame(width: 70, height: 70)
                    
                    Text(name)
                        .font(.caption)
                }
            }
        }
    }
    
    struct Stories: View {
        var body: some View {
            ScrollView(.horizontal,  showsIndicators: false) {
                HStack(spacing: 15.0) {
                    Story()
                    Story(image: "A" , name: "Ant-man")
                    Story(image: "B" , name: "Batman")
                    Story(image: "C" , name: "Captain")
                    Story(image: "D" , name: "Deadpool")
                    Story(image: "E" , name: "Electro")
                    Story(image: "F" , name: "Faucon")
                    Story(image: "G" , name: "Groot")
                    Story(image: "H" , name: "Hulk")
                    Story(image: "I" , name: "Iron-man")
                    
                    
                }
                .padding(.horizontal, 8)
            }
            .padding(.vertical , 10)
        }
    }
    
    struct Postheader: View {
        var body: some View {
            HStack {
                HStack {
                    Image("blackpanther-2")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(50)
                    
                    Text("Blackpanther")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                Spacer()
                Image("more")
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 8)
        }
    }
    
    struct PostContent: View {
        var image = ""
        @Binding var isLiked: Bool
        var body: some View {
            VStack() {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                HStack {
                
                    Button(action: {
                        self.isLiked.toggle()

                        
                    }, label: {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                            .foregroundColor(isLiked ? .red : .black)
                    })
                        .padding(.leading)
                    Image(systemName: "bubble.right.circle")
                    Image(systemName: "paperplane")
                    Spacer()
                    Image(systemName: "bookmark")
                        .padding(.trailing)
                }
                //            .padding(.horizontal, 12)
                //            .padding(.vertical, 9)
            }
        }
    }
    
    struct Post: View {
        var image: String = "blackpanther-2"
        var description: String = "Nouvelle photo de profil 😊"
        @State private var isLiked = false
        var body: some View {
            VStack(alignment: .leading, spacing: 0.0) {
                Postheader()
                
                PostContent(image: image, isLiked: $isLiked)
                
                if image.hasPrefix("a") {
                    
                    Text("liked by sadiomaneofficiel and others")
                        .font(.footnote)
                        .padding(.horizontal, 12)
                    
                    Text(description)
                        .font(.footnote)
                        .padding(.horizontal, 12)
                }
                
                else {
                    Text("Liked by Spiderman and others")
                        .font(.footnote)
                        .padding(.horizontal, 12)
                    
                    Text(description)
                        .font(.footnote)
                        .padding(.horizontal, 12)
                }
                
                
                
                HStack {
                    HStack(spacing: 7.0) {
                        Image("blackpanther-2")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .cornerRadius(50)
                        
                        Text("Add comment...")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("😍")
                        Text("😂")
                        Image(systemName: "plus.circle")
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 9)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
