//
//  AppDelegate.swift
//  LetsMoveSwift
//
//  Created by thierry hentic on 13/06/2019.
//  Copyright © 2019 thierry hentic. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var window: NSWindow!
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        
        
    }
    
    func applicationWillFinishLaunching(_ aNotification: Notification) {
        LetsMove.shared.moveToApplicationsFolderIfNecessary()
        
    }
    
    
    func applicationShouldTerminateAfterLastWindowClosed (_ sender: NSApplication) -> Bool
    {
        return true
    }
    
    
    
    
}

