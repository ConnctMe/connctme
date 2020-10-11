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
    
    @State var loggedIn: Bool = false
    var body: some View {
        var a = ConcentricOnboardingView(pages: [AnyView(NameEntry()), AnyView(EmailEntry()), AnyView(PasswordEntry())], bgColors: [.purple,.pink,.blue])
        a.didGoToLastPage = {
            loggedIn = true
        }
        return a
    }
}

struct NameEntry: View {
    @State var name : String = ""
    var body: some View {
        HStack {
            Spacer()
            TextField("What is your name?", text: $name)
            .padding(.all)
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
            .padding(.all)
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
            .padding(.all)
                .cornerRadius(5.0)
                .font(.largeTitle)
            Spacer()
        }
    }
}


struct OnboardingScreens_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreens()
    }
}
