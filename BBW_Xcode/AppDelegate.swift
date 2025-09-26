//
//  AppDelegate.swift
//  BBW_Xcode
//
//  Created by Jief on 9/25/25.
//

import Foundation
import SwiftUI

class MyClass {
    var timer: Timer?

    func startTimer() {
        // Schedule a timer to call handleTimerExecution every 2 seconds
        timer = Timer.scheduledTimer(timeInterval: 0.1,
                                     target: self,
                                     selector: #selector(handleTimerExecution), 
                                     userInfo: nil, 
                                     repeats: true)
    }

    @objc func handleTimerExecution() {
//        print("Timer executed...")
        loop();
    }

    func stopTimer() {
        timer?.invalidate() // Stop the timer
        timer = nil
    }
}

let myClassInstance = MyClass()


class MyAppDelegate: NSObject, NSApplicationDelegate
{
  func applicationDidFinishLaunching(_ notification: Notification)
  {
    setup();
    loop();
    myClassInstance.startTimer();
  }
}
