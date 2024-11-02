//
//  caringmindApp.swift
//  caringmind
//
//  Created by Alan on 11/1/24.
//

import SwiftUI

//
//  caringmindApp.swift
//  caringmind
//
//  Created by Alan on 11/1/24.
//

import SwiftUI

@main
struct caringmindApp: App {
    var body: some Scene {
        #if os(iOS)
        WindowGroup {
            ContentView()
        }
        #else
        fatalError("caringmindApp is only available on iOS devices.")
        #endif
    }
}

