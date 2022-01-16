//
//  ContentView.swift
//  CryptoTracker
//
//  Created by Daryna Polevyk on 10.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
            Text("Hello, world!")
                .padding()
                .foregroundColor(Color.theme.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
