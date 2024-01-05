//
//  SwiftUIView.swift
//  Lumos Social
//
//  Created by Armaan Ahmed on 1/4/24.
//

import SwiftUI

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
                            ProfileView(user: post.user)
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

//#Preview {
//    PostView(post: Post(user: User, text: <#T##String#>))
//}
