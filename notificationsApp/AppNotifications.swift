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

import Foundation

struct AppNotifications {
    // Refresh the preview window. Called when the settings are changed
    static let RefreshPreviewNotification: String = "refreshPreviewNotification"
    static var refreshPreview: NotificationCenter.Publisher {
        NotificationCenter.default.publisher(for: Notification.Name(rawValue: AppNotifications.RefreshPreviewNotification))
    }
}
