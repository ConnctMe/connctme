//
//  ConnctmeApp.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI
import Firebase

@main
struct ConnctmeApp: App {
    let persistenceController = PersistenceController.shared
    
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
      var body: some Scene {
        WindowGroup {
          ContentView()
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
      }
    }

    class AppDelegate: NSObject, UIApplicationDelegate {
      func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
      }
    }

//    let persistenceController = PersistenceController.shared
//
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
//        }
//    }
//}

struct ConnctmeApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
