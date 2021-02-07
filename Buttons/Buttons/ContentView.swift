//
//  ContentView.swift
//  Buttons
//
//  Created by Franklin Grijalva Revelo on 28/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            
           /* Button(action: {
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
            .padding()*/
            
            Button(action: {
                
            }, label: {
                HStack {
                    Image(systemName: "square.and.pencil")
                    
                    Text("Editar")
                        .fontWeight(.bold)
                        
                }
            })
            .buttonStyle(BasicButtonStyle())
            
            Button(action: {
                
            }, label: {
                HStack {
                    Image(systemName: "trash")
                    
                    Text("Eliminar")
                        .fontWeight(.bold)
                        
                }
            })
            .buttonStyle(BasicButtonStyle())
            
            Button(action: {
                
            }, label: {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    
                    Text("Compartir")
                        .fontWeight(.bold)
                        
                        
                }
                
            })
            .buttonStyle(BasicButtonStyle())
        
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BasicButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color("Dark Ocean 1"), Color("Dark Ocean 2")]), startPoint: .leading, endPoint: .trailing))
            .font(.largeTitle)
            .foregroundColor(.white)
            .cornerRadius(45)
            .shadow(color: .blue, radius: 10.0, x: 20, y: 5)
            .padding(.horizontal, 15)
            //.scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .rotationEffect(configuration.isPressed ? .degrees(90) : .degrees(0))
            
        
            
    }
}
