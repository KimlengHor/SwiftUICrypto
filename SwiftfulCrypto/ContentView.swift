//
//  ContentView.swift
//  SwiftfulCrypto
//
//  Created by Kimleng Hor on 5/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("Accent Color")
                    .foregroundColor(Color.theme.accent)
                
                Text("Accent Color")
                    .foregroundColor(Color.theme.secondaryText)
                
                Text("Accent Color")
                    .foregroundColor(Color.theme.red)
                
                Text("Accent Color")
                    .foregroundColor(Color.theme.green)
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
