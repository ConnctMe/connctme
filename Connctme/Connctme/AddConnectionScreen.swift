//
//  AddConnection.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI
import CoreImage.CIFilterBuiltins



struct AddConnectionScreen: View {
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    
    @State var event = ""
    @State var location = ""
    
    /// Generates a QR code from string.
    func generateQRCode(from string: String) -> UIImage {
        let data = Data(string.utf8)
        filter.setValue(data, forKey: "inputMessage")

        if let outputImage = filter.outputImage {
            if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgimg)
            }
        }

        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }

    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 20) {
                VStack(spacing: 8) {
                    Text("connct with")
                        .font(.subheadline)
                        .fontWeight(.thin)
                        .padding(.top)
                    Text("Nicholas Lorentzen")
                        .font(.title)
                        .fontWeight(.medium)
                    Image(uiImage: generateQRCode(from: "connctme://nicholaselorentzen"))
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                    Text("connctme.online/nicholaslorentzen")
                        .font(.subheadline)
                        .fontWeight(.thin)
                }
                .padding(.all)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2))
                .overlay(ProfileImage(size: CGFloat(100), imageFile: "nlorentzen").offset(CGSize(width: 0, height: -250)))
            }
            .offset(CGSize(width: 0, height: 20))
            Spacer()
                .frame(height: 40)
            VStack(alignment: .leading) {
                HStack(spacing: 5.0) {
                    Text("at")
                        .fontWeight(.semibold)
                        .font(.title2)
                    TextField("Event", text: $event)
                        .font(.title2)
                }
                HStack(spacing: 5.0) {
                    Text("in")
                        .fontWeight(.semibold)
                        .font(.title2)
                    TextField("Location", text: $location)
                        .font(.title2)
                }
            }
            .padding(.horizontal, 50.0)
            Spacer()
        }
    }
}

struct AddConnectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddConnectionScreen()
    }
}
