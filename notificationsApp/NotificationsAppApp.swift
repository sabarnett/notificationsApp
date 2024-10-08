//
// -----------------------------------------
// Original project: notificationsApp
// Original package: notificationsApp
// Created on: 15/07/2024 by: Steven Barnett
// Web: http://www.sabarnett.co.uk
// GitHub: https://www.github.com/sabarnett
// -----------------------------------------
// Copyright © 2024 Steven Barnett. All rights reserved.
//
    

import SwiftUI

@main
struct NotificationsAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        Settings {
            SettingsView()
                .frame(minWidth: 300, minHeight: 200)
        }
    }
}
