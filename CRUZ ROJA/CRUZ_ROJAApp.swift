//
//  CRUZ_ROJAApp.swift
//  CRUZ ROJA
//
//  Created by Mac OS lab on 09/04/24.
//

import SwiftUI
import CoreLocation
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
@main

struct CRUZ_ROJAApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var authenticationViewModel = AuthenticationViewModel()
        
        var body: some Scene {
            WindowGroup {
                if let _ = authenticationViewModel.user {
                    HomeView(authenticationViewModel: authenticationViewModel)
                } else {
                    AuthenticationView(authenticationViewModel: authenticationViewModel)
                }
            }
        }
    
}
