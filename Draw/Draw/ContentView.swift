//
//  ContentView.swift
//  Draw
//
//  Created by Franklin Grijalva Revelo on 12/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Path() { path in
            path.move(to: CGPoint(x: 30, y: 30))
            path.addLine(to: CGPoint(x: 230, y: 30))
            path.addLine(to: CGPoint(x: 230, y: 150))
            path.addLine(to: CGPoint(x: 30, y: 150))
            path.closeSubpath() // cierra el path
            
        }
        //.fill(Color.blue)  // rellena la figura
        .stroke(Color.blue, lineWidth: 10) // Borde de la figura
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
