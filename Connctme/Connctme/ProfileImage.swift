//
//  ProfileImage.swift
//  Connctme
//
//  Created by Jiahua Chen on 10/10/20.
//

import SwiftUI

struct ProfileImage: View {
    var size: CGFloat?
    var body: some View {
        Image("nlorentzen")
            .resizable()
            .frame(width: size ?? 50, height: size ?? 50)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 3))
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage()
    }
}
