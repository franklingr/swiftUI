//
//  ContentView.swift
//  Images
//
//  Created by Franklin Grijalva Revelo on 8/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("newYork")
            .resizable()
            //.edgesIgnoringSafeArea(.vertical)
            .aspectRatio(contentMode: .fill)
            .frame(width: 300)
            .clipped()
            .clipShape(Capsule())
            .opacity(0.8)
            .overlay(
                /*Image(systemName: "heart.fill")
                        .font(.system(size: 60))
                        .foregroundColor(.pink)
                        .opacity(0.5)*/
                Text("NewYork hermosa ciudad de los Estados Unidos de Norte América")
                    
                    .fontWeight(.bold)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.7))
                    .clipShape(Capsule())
                    //.cornerRadius(10)
                    //.opacity(0.7)
                    //.padding()
                
                ,
                alignment: .top
            )
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
