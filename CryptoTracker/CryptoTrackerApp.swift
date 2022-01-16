//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Daryna Polevyk on 10.11.2021.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)  //All views and child view has access to vm
        }
    }
}
