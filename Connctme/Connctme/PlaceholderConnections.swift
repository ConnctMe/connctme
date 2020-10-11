//
//  PlaceholderConnections.swift
//  Connctme
//
//  Created by LorentzenN on 10/10/20.
//

import Foundation

let placeholderConnections: [Connection] = [
    Connection(name: "Nicolas Lorentzen", image: ProfileImage( imageFile: "nlorentzen"), description: "Full Stack Developer @ Google", tags: [TagData(text: "Google", color: .red), TagData(text: "Recruiter", color: .yellow), TagData(text: "Boston, MA", color: .green), TagData(text: "Internship", color: .blue)], meetingTime: "Tuesday", meetingEvent: "Google Job Fair", meetingLocation: "Providence, RI"),
    Connection(name: "Nicolas Lorentzen", image: ProfileImage(imageFile: "nlorentzen"), description: "Full Stack Developer @ Google", tags: [TagData(text: "Google", color: .red), TagData(text: "Google", color: .red)], meetingTime: "Tuesday", meetingEvent: "Google Career Fair", meetingLocation: "Providence, RI"),
    Connection(name: "Nicholas Lorentzen", image: ProfileImage(imageFile: "nlorentzen"), description: "Full Stack Developer @ Google", tags: [TagData(text: "Google", color: .red), TagData(text: "Google", color: .red)], meetingTime: "Tuesday", meetingEvent: "Google Career Fair", meetingLocation: "Providence, RI")
]

let placeholderProfile: Profile = Profile(name: "Nicholas Lorentzen", image: ProfileImage(size: 100, imageFile: "nlorentzen"), description: "Full Stack Dev at Google", location: "Providence, RI", tags: [TagData(text: "Google", color: .purple), TagData(text: "Providence", color: .red)], about: "hsafgkdjhgsdkjf sadgfsadh weuiohqw hdkasfdasf  sasf sdfga ewy asdfug se fyasgkdf ashdf wf yausgdfasydf weyfgdasuyfgsa waefygs dauyfgas  wefy agsdfgsd f", resume: URL(string: "https://writing.colostate.edu/guides/documents/resume/functionalSample.pdf"))
