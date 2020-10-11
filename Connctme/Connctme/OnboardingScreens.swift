//
//  OnboardingScreens.swift
//  Connctme
//
//  Created by LorentzenN on 10/11/20.
//

import SwiftUI
import ConcentricOnboarding

struct OnboardingScreens: View {
    var body: some View {
        Text("")
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
