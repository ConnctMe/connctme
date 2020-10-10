//
//  SmallMap.swift
//  Connctme
//
//  Created by Jiahua Chen on 10/10/20.
//

import SwiftUI
import MapKit

struct SmallMap: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<SmallMap>) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<SmallMap>) {
        
    }
    
}

struct SmallMap_Previews: PreviewProvider {
    static var previews: some View {
        SmallMap()
    }
}
