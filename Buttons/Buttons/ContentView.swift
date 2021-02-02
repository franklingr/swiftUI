//
//  ContentView.swift
//  Buttons
//
//  Created by Franklin Grijalva Revelo on 28/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Button(action: {
                print("Botón hola pulsado!")
                
            }) {
                Text("Hola mundo")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    .padding(12)
                    .overlay(RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.green, lineWidth: 5))
                   /* .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2), lineWidth: 2))
                    .shadow(radius: 5, x: -5, y: 5 )*/
                    
            }
            .padding()
            
            Button(action: {
                
            }, label: {
                HStack {
                    Image(systemName: "trash")
                    
                    Text("Eliminar")
                        .fontWeight(.bold)
                        
                }
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color("Dark Ocean 1"), Color("Dark Ocean 2")]), startPoint: .leading, endPoint: .trailing))
                .font(.largeTitle)
                .foregroundColor(.white)
                .cornerRadius(45)
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
