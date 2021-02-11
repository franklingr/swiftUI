//
//  ContentView.swift
//  States_bindings
//
//  Created by Franklin Grijalva Revelo on 6/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlaying = false
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Image(systemName:isPlaying ? "stop.circle.fill" :
            "play.circle.fill")
                .font(.system(size: 100))
                .foregroundColor(isPlaying ? .red : .blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
