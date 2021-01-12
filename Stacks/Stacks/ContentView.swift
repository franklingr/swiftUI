//
//  ContentView.swift
//  Stacks
//
//  Created by Franklin Grijalva Revelo on 9/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                HeaderView()
                    .padding()
                
                Spacer()
            }
            
            
            ZStack {
                PricingView(title: "Plan Básico", price: "9.99€", subtitle: "Un curso incluido", backgraundColor: .green, icon: "star")
                
                PricingView(title: "Carrera", price: "29.99€", subtitle: "Toda una Carrera", backgraundColor: .gray, icon: "timer", tagText: "El mejor para empezar")
                    .offset(x: 0, y: 110)
                
                PricingView(title: "Definitivo", price: "99.99€", subtitle: "Todos los cursos online", backgraundColor: .black, icon: "lightbulb", tagText: "Conviértete en un master del universo")
                    .offset(x: 0, y: 220)
                    
            }
            
            .padding()
            
            Spacer()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Elige tu itinerario")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
                
            
            Text("de aprendizaje")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
                
        }
    }
}

struct PricingView: View {
    var title: String
    var price: String
    var subtitle: String
    var backgraundColor: Color
    var icon: String?
    var tagText: String?
    
    var body: some View {
        ZStack {
            VStack{
                icon.map({                     //unwrapping optional or optional binding
                    Image(systemName: $0)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                })
                
                
                
                Text(title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    
                Text(price)
                    .font(.system(size: 35, weight: .heavy , design: .rounded))
                    .foregroundColor(.white)
                
                Text(subtitle)
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: 150, alignment: .center)
            .padding()
            .background(backgraundColor)
            .cornerRadius(10)
            
            tagText.map({
                Text($0)
                    .font(.system(.caption, design: .rounded))
                    .foregroundColor(.blue)
                    .fontWeight(.black)
                    .padding(8)
                    .background(Color.yellow)
                    .offset(x: 0, y: -85)
            })
        }
        
        
    }
}


