//
//  TestSwiftUIApp.swift
//  TestSwiftUI
//
//  Created by m.a.bellucci on 08/04/24.
//

import SwiftUI

var initTime: CFAbsoluteTime!

@main
struct TestSwiftUIApp: App {

    init() {
        initTime = CFAbsoluteTimeGetCurrent()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
