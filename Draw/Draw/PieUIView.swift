//
//  PieUIView.swift
//  Draw
//
//  Created by Franklin Grijalva Revelo on 16/2/21.
//

import SwiftUI

struct PieUIView: View {
    var body: some View {
        ZStack {
            // Path superior
            Path(){path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 200), clockwise: true)
                
            }.fill(Color(.systemBlue))//Forma de invocar nuevos colores
            
            // Queso rosa
            Path(){path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 200), endAngle: Angle(degrees: 160), clockwise: true)
                
            }
            .fill(Color(.systemPink))
            .offset(x: -30, y: 0) // Destacar trozo de la tarta
            
            // Path borde stroke
            Path(){path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 200), endAngle: Angle(degrees: 160), clockwise: true)
                path.closeSubpath()// Cerrar el path
            }
            .stroke(Color(red: 200/255, green: 50/255, blue: 170/255), lineWidth: 10)
            .offset(x: -30, y: 0)
            .overlay(Text("11,1%")
                        .font(.system(.largeTitle, design: .rounded))
                        .foregroundColor(.white)
                        .bold()
                        .offset(x: -150, y: -170))
            
            // Path lefth
            Path(){path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 160), endAngle: Angle(degrees: 100), clockwise: true)
            }.fill(Color(.systemTeal))
            
            // Path rigth
            Path(){path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 100), endAngle: Angle(degrees: 0), clockwise: true)
                
            }.fill(Color(.systemGray))
        }
        
        
        
    }
}

struct PieUIView_Previews: PreviewProvider {
    static var previews: some View {
        PieUIView()
    }
}
