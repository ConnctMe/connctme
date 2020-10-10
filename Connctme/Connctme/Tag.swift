//
//  Tag.swift
//  Connctme
//
//  Created by Jiahua Chen on 10/10/20.
//

import SwiftUI

struct Tag: View {
    var data: TagData
    var body: some View {
        Group {
            Text(data.text)
                .foregroundColor(Color.white)
                .font(.caption)
                .fontWeight(.light)
                .padding(.horizontal, 8)
                .padding(.vertical, 5)
                .frame(height: 20.0)
        }
        .background(data.color)
            .cornerRadius(12.5)
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag(data: TagData(text: "Google", color: .red))
    }
}
