//
//  OnboardingScreens.swift
//  Connctme
//
//  Created by LorentzenN on 10/11/20.
//

import SwiftUI
import ConcentricOnboarding

struct OnboardingScreens: View {
    @State var name : String = ""
    @State var username : String = ""
    @State var password : String = ""
    @State var description : String = ""
    @State var location: String = ""
    @State var tags: String = ""
    @State var about: String = ""
    @State var resume: String = "" //string represents url
    @Binding var loggedIn: Bool
    
    var body: some View {
        var a = ConcentricOnboardingView(
            pages: [
                AnyView(WelcomeView()),
                AnyView(NameEntry()),
                AnyView(EmailEntry()),
                AnyView(PasswordEntry()),
                AnyView(DetailsEntry()),
                AnyView(SocialEntry()),
                AnyView(FinalView())
                ],
            bgColors: [
                Color.init(.sRGB, red: 1, green: 1, blue: 1, opacity: 1),
                Color.init(.sRGB, red: 0.6, green: 1, blue: 1, opacity: 1),
                Color.init(.sRGB, red: 1, green: 1, blue: 0.6, opacity: 1),
                Color.init(.sRGB, red: 0.6, green: 1, blue: 1, opacity: 1),
                Color.init(.sRGB, red: 1, green: 1, blue: 0.6, opacity: 1),
                Color.init(.sRGB, red: 0.6, green: 1, blue: 1, opacity: 1),
                Color.init(.sRGB, red: 1, green: 1, blue: 0.6, opacity: 1)])
        a.insteadOfCyclingToFirstPage = {
            loggedIn = true
        }
        return a
    }
}

struct WelcomeView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .leading, spacing: 10.0) {
                Text("Welcome to ConnctMe!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                Text("ConnctMe is an app that helps you make meaningful professional connections. ")
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
            }
            .padding(.all, 30.0)
            Spacer()
        }
    }
}

struct NameEntry: View {
    @State var name : String = ""
    var body: some View {
        HStack {
            Spacer()
            TextField("What is your name?", text: $name)
                .padding(.all, 20.0)
                .cornerRadius(5.0)
                .font(.largeTitle)
            Spacer()
        }
    }
}

struct EmailEntry: View {
    @State var name : String = ""
    var body: some View {
        HStack {
            Spacer()
            TextField("What is your email?", text: $name)
                .autocapitalization(.none)
                .padding(.all, 20.0)
                .cornerRadius(5.0)
                .font(.largeTitle)
            Spacer()
        }
    }
}

struct PasswordEntry: View {
    @State var name : String = ""
    var body: some View {
        HStack {
            Spacer()
            SecureField("Enter A Password", text: $name)
                .autocapitalization(.none)
                .padding(.all, 20.0)
                .cornerRadius(5.0)
                .font(.largeTitle)
            Spacer()
        }
    }
}

struct DetailsEntry: View {
    @State var name : String = ""
    @State var description : String = ""
    @State var tags : String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Text("Let's construct your profile!")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 20.0)
            VStack(alignment: .trailing, spacing: 10.0) {
                HStack(alignment: .center, spacing: 20.0) {
                    VStack(alignment: .leading) {
                        Text("Nicholas Lorentzen")
                            .font(.title2)
                            .fontWeight(.bold)
                        TextField("Tagline (i.e. Software Engineer @ Google)", text: $description)
                            .font(.subheadline)
                    }
                    Spacer()
                }
                HStack(alignment: .center) {
                    TextField("Tags (i.e. Google, Internship, Hiring)", text: $tags)
                        .font(.subheadline)
                    Spacer()
                }
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2))
            .padding([.horizontal])
        }
    }
}

struct SocialEntry: View {
    @State var phone : String = ""
    @State var github : String = ""
    @State var linkedin : String = ""
    @State var dribbble : String = ""
    @State var homepage : String = ""
    @State var url : String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Text("Share some more info! ")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 20.0)
            VStack(alignment: .trailing, spacing: 10.0) {
                HStack(alignment: .center, spacing: 20.0) {
                    VStack(alignment: .leading) {
                        Text("Nicholas Lorentzen")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Software Engineer @ Google")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    Spacer()
                }
                HStack(alignment: .center) {
                    Tag(data: TagData(text: "Google", color: .blue))
                    Tag(data: TagData(text: "Software Engineer", color: .red))
                    Tag(data: TagData(text: "Cloud", color: .green))
                    Tag(data: TagData(text: "Internships", color: .orange))
                    Spacer()
                }
                Divider()
                VStack() {
                    TextField("Phone Number", text: $phone)
                        .font(.subheadline)
                        .keyboardType(.numberPad)
                    TextField("LinkedIn", text: $linkedin)
                        .font(.subheadline)
                    TextField("Github", text: $github)
                        .font(.subheadline)
                    TextField("Dribbble", text: $dribbble)
                        .font(.subheadline)
                    TextField("Homepage", text: $homepage)
                        .font(.subheadline)
                    TextField("URL to resume", text: $url)
                        .font(.subheadline)
                    Divider()
                    Text("All fields are optional. Your email has been automatically recorded from before. We will automatically import your image from your LinkedIn profile. You can change these later from your profile. ")
                        .font(.caption2)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .padding(.all, 0.0)
                }
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2))
            .padding([.horizontal])
        }
    }
}

struct FinalView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Text("You're ready to be Connct'ed! ")
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 20.0)
            VStack(alignment: .trailing, spacing: 10.0) {
                HStack(alignment: .center, spacing: 20.0) {
                    ProfileImage(imageFile: "nlorentzen")
                    VStack(alignment: .leading) {
                        Text("Nicholas Lorentzen")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Software Engineer @ Google")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    Spacer()
                }
                HStack(alignment: .center) {
                    Tag(data: TagData(text: "Google", color: .blue))
                    Tag(data: TagData(text: "Software Engineer", color: .red))
                    Tag(data: TagData(text: "Cloud", color: .green))
                    Tag(data: TagData(text: "Internships", color: .orange))
                    Spacer()
                }
                Divider()
                HStack() {
                VStack(alignment: .leading) {
                    HStack() {
                        Text("Email:")
                            .font(.subheadline)
                            .fontWeight(.light)
                        Text("nlorentzen@google.com")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    HStack() {
                        Text("Phone Number:")
                            .font(.subheadline)
                            .fontWeight(.light)
                        Text("(323) 488-1111")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    HStack() {
                        Text("Linkedin:")
                            .font(.subheadline)
                            .fontWeight(.light)
                        Text("nlorentzen")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    HStack() {
                        Text("Github:")
                            .font(.subheadline)
                            .fontWeight(.light)
                        Text("EKKOING")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                }
                    Spacer()
                }
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2))
            .padding([.horizontal])
        }
    }
}

struct FinalPlaceholder: View {
    var body: some View {
        Group {
            Text("")
        }
    }
}
