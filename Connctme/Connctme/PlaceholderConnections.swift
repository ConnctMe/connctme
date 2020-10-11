//
//  PlaceholderConnections.swift
//  Connctme
//
//  Created by LorentzenN on 10/10/20.
//

import Foundation

let placeholderConnections: [Connection] = [
    Connection(
        name: "Nicholas Lorentzen",
        image: ProfileImage(imageFile: "nlorentzen"),
        description: "Software Engineer @ Google",
        tags: [TagData(text: "Google", color: .blue), TagData(text: "Software Engineer", color: .red), TagData(text: "Cloud", color: .green), TagData(text: "Internships", color: .orange)],
        meetingTime: "Today",
        meetingEvent: "Job Fair",
        meetingLocation: "Providence, RI",
        newConnection: false),
    Connection(
        name: "Jiahua Chen",
        image: ProfileImage(imageFile: "jchen"),
        description: "SWE at Facebook",
        tags: [TagData(text: "Facebook", color: .blue), TagData(text: "Recruiter", color: .orange), TagData(text: "Internship", color: .red)],
        meetingTime: "Today",
        meetingEvent: "Job Fair",
        meetingLocation: "Providence, RI"),
    Connection(
        name: "Gareth Mansfield",
        image: ProfileImage(imageFile: "gmansfield"),
        description: "Stanford CS Graduate Student",
        tags: [TagData(text: "Stanford", color: .red), TagData(text: "New York", color: .blue), TagData(text: "Job Hunting", color: .orange)],
        meetingTime: "September 27",
        meetingEvent: "CS Mixer",
        meetingLocation: "Facebook Group"),
    Connection(
        name: "Emily Ye",
        image: ProfileImage(imageFile: "eye"),
        description: "Professor at Yale",
        tags: [TagData(text: "AI/ML", color: .green), TagData(text: "Research", color: .pink), TagData(text: "Yale", color: .blue)],
        meetingTime: "September 14",
        meetingEvent: "AI Conference",
        meetingLocation: "New Haven, CT"),
 Connection(
        name: "Shriram Krishnamurthi",
        image: ProfileImage(imageFile: "sk"),
        description: "CS Professor @ Brown",
        tags: [TagData(text: "Languages", color: .orange), TagData(text: "Pyret", color: .blue), TagData(text: "Research", color: .green), TagData(text: "CS Education", color: .red)],
        meetingTime: "September 10",
        meetingEvent: "PirateCon",
        meetingLocation: "a Pirate Ship",
        newConnection: false)]

//let placeholderConnections: [Connection] = [
//    Connection(
//        name: "Bobby McBobbins",
//        image: ProfileImage(imageFile: "bob"),
//        description: "Structural Engineering @ Brown",
//        tags: [TagData(text: "Senior", color: .orange), TagData(text: "Engineering", color: .blue), TagData(text: "Job Seeking", color: .green), TagData(text: "Student", color: .red)],
//        meetingTime: "Today",
//        meetingEvent: "Job Fair",
//        meetingLocation: "Providence, RI",
//        newConnection: true)]

let placeholderProfile: Profile = Profile(username: "", password: "", name: "Nicholas Lorentzen", image: ProfileImage(size: 100, imageFile: "nlorentzen"), description: "Full Stack Dev at Google", location: "Providence, RI", tags: [TagData(text: "Google", color: .purple), TagData(text: "Providence", color: .red)], about: "hsafgkdjhgsdkjf sadgfsadh weuiohqw hdkasfdasf  sasf sdfga ewy asdfug se fyasgkdf ashdf wf yausgdfasydf weyfgdasuyfgsa waefygs dauyfgas  wefy agsdfgsd f", resume: URL(string: "https://writing.colostate.edu/guides/documents/resume/functionalSample.pdf"))
