//
//  Connection.swift
//  Connctme
//
//  Created by Gareth Mansfield on 10/10/20.
//

import Foundation
import SwiftUI

struct TagData {
    let id = UUID()
    let text: String
    let color: Color
}

struct Connection {
    let id = UUID()
    var name: String
    var image: ProfileImage
    var description: String
    var tags: [TagData]
    var meetingTime: String
    var meetingEvent: String
    var meetingLocation: String
}
