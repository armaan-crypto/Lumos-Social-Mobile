//
//  SwiftUIView.swift
//  Lumos Social
//
//  Created by Armaan Ahmed on 1/4/24.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
struct PostView: View {
    
    @State var post: Post
    
    var body: some View {
        VStack {
            HStack {
                Image(post.user.profilePicture)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .cornerRadius(25)
                Spacer()
                    .frame(width: 10)
                VStack {
                    HStack {
                        NavigationLink {
                            // TODO: Replace with the "My Profile" Screen passing through post.user
                            ContentView()
                        } label: {
                            Text(post.user.name)
                                .fontWeight(.bold)
                                .foregroundStyle(Color.white)
                        }
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 3)
                    HStack {
                        // TODO: Change this to actual post time relative to now
                        Text("1 hour ago")
                            .foregroundStyle(Color("subtitle"))
                            .font(.system(size: 14))
                        Spacer()
                    }
                }
                Spacer()
            }
            .padding()
            HStack {
                Text(post.text)
                    .foregroundStyle(Color.white)
                Spacer()
            }
            .padding()
        }
        .background(Color("gray"))
        .cornerRadius(20)
    }
}

#Preview {
    PostView()
}
