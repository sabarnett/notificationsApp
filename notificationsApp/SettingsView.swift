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

struct SettingsView: View {
    var body: some View {
        Text("This is where you would have a setting that changes.")
        Button(action: {
            sendNotification()
        }, label: {
            Text("Notify all windows")
        })
    }
    
    fileprivate func sendNotification() {
        let userData: [AnyHashable: Any] = [ 
            "updateId": UUID().uuidString,
            "updateTime": Date.now.formatted()
        ]
        
        let notificationName = Notification.Name(AppNotifications.RefreshPreviewNotification)
        let notification = Notification(name: notificationName, 
                                        object: nil,
                                        userInfo: userData)
        NotificationCenter.default.post(notification)
    }
}

#Preview {
    SettingsView()
}
