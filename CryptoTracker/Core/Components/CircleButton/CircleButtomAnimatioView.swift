//
//  CircleButtomAnimatioView.swift
//  CryptoTracker
//
//  Created by Daryna Polevyk on 12.11.2021.
//

import SwiftUI

struct CircleButtomAnimatioView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none)
            
    }
}

struct CircleButtomAnimatioView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtomAnimatioView(animate: .constant(false))
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
    }
}
