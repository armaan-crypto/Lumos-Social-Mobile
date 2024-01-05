//
//  SimplePostThread.swift
//  Lumos Social
//
//  Created by Armaan Ahmed on 1/4/24.
//

import SwiftUI

struct SimplePostThread: View {
    @State var posts: [Post] = []
    
    var body: some View {
        VStack {
            ForEach(posts) { post in
                PostView(post: post)
            }
            Spacer()
        }
        .padding()
        .onAppear(perform: {
            // TODO: Fill posts with SQL
            posts = []
            posts.append(Post(user: K.testUser, text: "Here's a test post."))
            posts.append(Post(user: K.testUser, text: "Here's a test post."))
            posts.append(Post(user: K.testUser, text: "Here's a test post."))
        })
        .background(Color("black"))
//        .navigationTitle("Social")
        .toolbar {
            ToolbarItem(placement: ToolbarItemPlacement.topBarLeading) {
                VStack {
                    Spacer().frame(height: 20)
                    Text("Simple Post Thread")
                        .font(.system(size: 28, weight: .heavy))
                        .foregroundStyle(Color.white)
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        SimplePostThread()
    }
}

struct Post: Identifiable {
    var id: UUID { UUID() }
    let user: User
    let text: String
}
