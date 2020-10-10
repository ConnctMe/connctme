//
//  ConnectionList.swift
//  Connctme
//
//  Created by Gareth Mansfield on 10/10/20.
//

import Foundation
import SwiftUI

struct ConnectionList: View {
    
    let connections : [Connection]
    
    var body: some View {
        List(connections, id: \.id) { connection in
            PersonView(connection: connection)
        }
    }
}
