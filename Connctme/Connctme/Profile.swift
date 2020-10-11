//
//  Profile.swift
//  Connctme
//
//  Created by Gareth Mansfield on 10/10/20.
//

import Foundation


struct Profile {
    let id = UUID()
    var username: String
    var password: String
    var name: String
    var image: ProfileImage
    var description: String
    var location: String
    var tags: [TagData]
    var about: String
    var resume: URL?
}
