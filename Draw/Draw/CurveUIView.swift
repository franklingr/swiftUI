//
//  CurveUIView.swift
//  Draw
//
//  Created by Franklin Grijalva Revelo on 12/2/21.
//

import SwiftUI

struct CurveUIView: View {
    var body: some View {
        ZStack {
            Button(action: {
                
            }, label: {
                Text("Prueba")
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 200, height: 100)
                    .background(FunnyLabel(percCircle: 0.5).fill(Color.blue))
            })
            
            
            
            // Para poder hacer solo un borde en una figura hay que repetir el código del Path y usar .stroke(Color.pink)
            Path() { path in
                path.move(to: CGPoint(x: 30, y: 130))
                path.addLine(to: CGPoint(x: 60, y: 130))
                path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 60))  // add curves
                path.addLine(to: CGPoint(x: 230, y: 130))
                path.addLine(to: CGPoint(x: 230, y: 250))
                path.addLine(to: CGPoint(x: 30, y: 250))
                path.closeSubpath() // Cerrar el path
            
            }
            .stroke(Color.pink, lineWidth: 10)
        }
    }
}

struct CurveUIView_Previews: PreviewProvider {
    static var previews: some View {
        CurveUIView()
    }
}


struct FunnyLabel: Shape {
    
    var percCircle:CGFloat = 1.0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.size.width * (1-percCircle)/2, y: 0))
       // path.addLine(to: CGPoint(x: 60, y: 130))
        // add curves
        path.addQuadCurve(to: CGPoint(x: rect.size.width * (1-(1-percCircle)/2), y: 0), control: CGPoint(x: rect.size.width/2, y: -(rect.size.width*0.4)))
       /*
         Dibujar rectángulo linea a linea
        path.addLine(to: CGPoint(x: 230, y: 130))
        path.addLine(to: CGPoint(x: 230, y: 250))
        path.addLine(to: CGPoint(x: 30, y: 250))*/
        
        // Dibujar rectángulo diecto
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        
        return path
    }
}
