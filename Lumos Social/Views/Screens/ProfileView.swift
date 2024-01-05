//
//  ProfileView.swift
//  Lumos Social
//
//  Created by Armaan Ahmed on 1/4/24.
//

import SwiftUI

struct ProfileView: View {
    
    @State var user: User
    
    var body: some View {
        // work here
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    NavigationView {
        ProfileView(user: User(id: 1, username: "armaan810", name: "Armaan Ahmed", password: "hello", email: "armaanahmed08@gmail.com", phoneNumber: "5717587294", school: 1, location: "Fairfax, VA", bio: "Bio", profilePicture: "default", banner: "Chief Executive Officer of XYZ", registerTime: .now, grade: 10))
    }
}
