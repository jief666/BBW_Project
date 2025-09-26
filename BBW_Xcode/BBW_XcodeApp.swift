//
//  BBW_XcodeApp.swift
//  BBW_Xcode
//
//  Created by Jief on 9/24/25.
//

import SwiftUI

@main
struct BBW_XcodeApp: App
{
    @NSApplicationDelegateAdaptor(MyAppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
