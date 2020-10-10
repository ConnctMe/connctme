//
//  PersonView.swift
//  Connctme
//
//  Created by Jiahua Chen on 10/10/20.
//

import SwiftUI

struct PersonView : View {
    var connection : Connection
    
    var body: some View {
        // Text(connection.name)
        VStack(alignment: .trailing, spacing: 10.0) {
            HStack(alignment: .center, spacing: 20.0) {
                connection.image
                VStack(alignment: .leading) {
                    Text(connection.name)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text(connection.description)
                        .font(.subheadline)
                        .fontWeight(.light)
                }
                Spacer()
            }
            HStack(alignment: .center) {

                ForEach(connection.tags, id: \.id) {tag in
                    Tag(data: tag)
                }
                Spacer()
            }
            HStack(spacing: 3) {
                Text("Met on")
                    .font(.caption)
                    .fontWeight(.light)
                Text(connection.meetingTime)
                    .font(.caption)
                    .fontWeight(.semibold)
                Text("at")
                    .font(.caption)
                    .fontWeight(.light)
                Text(connection.meetingEvent)
                    .font(.caption)
                    .fontWeight(.semibold)
                Text("in")
                    .font(.caption)
                    .fontWeight(.light)
                Text(connection.meetingLocation)
                    .font(.caption)
                    .fontWeight(.semibold)
            }
        }
        .padding(.all)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2))
        .padding([.horizontal])
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(connection: Connection(name: "Nicolas Lorentzen", image: ProfileImage(), description: "Full Stack Developer @ Google", tags: [TagData(text: "Google", color: .red), TagData(text: "Google", color: .yellow), TagData(text: "Google", color: .blue)], meetingTime: "Tuesday", meetingEvent: "Google Job Fair", meetingLocation: "Providence, RI"))
    }
}
