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

struct ContentView: View {
    
    @State private var updateId: String = ""
    @State private var updatedTime: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Text("Last update id: \(updateId)")
            Text("Last update at: \(updatedTime)")
        }
        .padding()
        .onReceive(AppNotifications.refreshPreview) { userData in
            guard let userInfo = userData.userInfo as NSDictionary? as! [String: String]? else { return }

            self.updateId = userInfo["updateId"] ?? "Unknown"
            self.updatedTime = userInfo["updateTime"] ?? "Unknown"
        }
    }
}

#Preview {
    ContentView()
}
