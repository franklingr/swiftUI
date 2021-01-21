//
//  ContentView.swift
//  Scroll_CardView
//
//  Created by Franklin Grijalva Revelo on 19/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack{
                Text("Juan Gabriel Gomila")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.bold)
                Text("UCI, Profesor universitario y CEO de FROGAMES ltd")
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                Text("139.245 estudiantes - 59 cursos - 23.400 reseñas")
                    .font(.system(.footnote, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.secondary)
            }
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack{
                CardView(imageName: "swift", authorName: "Juan Grabriel Gomila", courseTitle: "Diseño de apps para IOS 13 con swiftUI desde cero", originalPrice: "10.99€", discountPrice: "109.99€")
                    .frame(width: 300)
            
                CardView(imageName: "machineLearning", authorName: "Juan Grabriel Gomila", courseTitle: "Curso completo de machine learning con Python, desarrolla tu potencial", originalPrice: "10.99€", discountPrice: "109.99€")
                    .frame(width: 300)
            
                CardView(imageName: "robot", authorName: "Juan Grabriel Gomila", courseTitle: "Diseño de apps para IOS 13 con swiftUI desde cero", originalPrice: "10.99€", discountPrice: "109.99€")
                    .frame(width: 300)
            
                CardView(imageName: "videoJuego", authorName: "Juan Grabriel Gomila", courseTitle: "Diseño de apps para IOS 13 con swiftUI desde cero", originalPrice: "10.99€", discountPrice: "109.99€")
                    .frame(width: 300)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
