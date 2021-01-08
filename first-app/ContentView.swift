//
//  ContentView.swift
//  first-app
//
//  Created by Franklin Grijalva Revelo on 7/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world! el mejor lugar para vivir")
            .fontWeight(.bold)
            .font(.system(.largeTitle, design: .rounded))
            .foregroundColor(Color.red)
            .multilineTextAlignment(.center)
            .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0)
                
            )
            .shadow(color: .gray, radius: 1, x: 0, y: 5)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
