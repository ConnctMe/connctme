//
//  PersonView.swift
//  Connctme
//
//  Created by Jiahua Chen on 10/10/20.
//

import SwiftUI

struct PersonView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 10.0) {
            HStack(alignment: .center, spacing: 20.0) {
                ProfileImage()
                VStack(alignment: .leading) {
                    Text("Nicholas Lorentzen")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("Full Stack Developer @ Google")
                        .font(.subheadline)
                        .fontWeight(.light)
                }
                Spacer()
            }
            HStack() {
                Group {
                    Text("Google")
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .fontWeight(.light)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 5)
                        .frame(height: 20.0)
                }
                    .background(Color.red)
                    .cornerRadius(12.5)
                Group {
                    Text("Recruiter")
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .fontWeight(.light)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 5)
                        .frame(height: 20.0)
                }
                    .background(Color.blue)
                    .cornerRadius(12.5)
                Group {
                    Text("Boston, MA")
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .fontWeight(.light)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 5)
                        .frame(height: 20.0)
                }
                    .background(Color.green)
                    .cornerRadius(12.5)
                Group {
                    Text("Internship")
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .fontWeight(.light)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 5)
                        .frame(height: 20.0)
                }
                    .background(Color.orange)
                    .cornerRadius(12.5)
                Spacer()
            }
            HStack(spacing: 3) {
                Text("Met on")
                    .font(.caption)
                    .fontWeight(.light)
                Text("Tuesday")
                    .font(.caption)
                    .fontWeight(.semibold)
                Text("at")
                    .font(.caption)
                    .fontWeight(.light)
                Text("Google Job Fair")
                    .font(.caption)
                    .fontWeight(.semibold)
                Text("in")
                    .font(.caption)
                    .fontWeight(.light)
                Text("Providence, RI")
                    .font(.caption)
                    .fontWeight(.semibold)
            }
        }
        .padding(.all)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2)
        )
        .padding([.horizontal])
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}
