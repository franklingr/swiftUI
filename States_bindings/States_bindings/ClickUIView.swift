//
//  ClickUIView.swift
//  States_bindings
//
//  Created by Franklin Grijalva Revelo on 10/2/21.
//

import SwiftUI

struct ClickUIView: View {
    @State private var incrementNumber: Int = 0
    @State private var counterNumber: Int = 0
    @State private var progressNumber: Int = 0
    
    
    var body: some View {
        VStack {
            
            Text("\(incrementNumber + counterNumber + progressNumber)")
                .font(.system(size: 100, weight: .black, design: .rounded))
            
            CounterView(incrementNumber: $incrementNumber, buttonColor: .purple)
            CounterView(incrementNumber: $counterNumber, buttonColor: .yellow)
            CounterView(incrementNumber: $progressNumber, buttonColor: .green)
        }
    }
}

struct ClickUIView_Previews: PreviewProvider {
    static var previews: some View {
        ClickUIView()
    }
}

struct CounterView: View {
    @Binding var incrementNumber: Int
    
    var buttonColor: Color
    
    
    var body: some View {
        Button(action: {
            self.incrementNumber += 1
            
            
        }, label: {
            Circle()
                .frame(width: 150, height: 150, alignment: .center)
                .foregroundColor(buttonColor)
                .overlay(Text("\(incrementNumber)"))
                .font(.system(size: 80, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            
        })
    }
}
