//
//  CardView.swift
//  Scroll_CardView
//
//  Created by Franklin Grijalva Revelo on 19/1/21.
//

import SwiftUI

struct CardView: View {
    var imageName: String
    var authorName: String
    var courseTitle: String
    var originalPrice: String
    var discountPrice: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
            
            HStack {
                VStack(alignment: .leading) {
                    Text(courseTitle.uppercased())
                        .bold()
                        .font(.title)
                        .lineLimit(3)
                    Text(authorName)
                        .foregroundColor(.secondary)
                    HStack {
                        Text(originalPrice)
                            .font(.subheadline)
                            
                        Text(discountPrice)
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .strikethrough()
                        
                    }
                }
                .layoutPriority(10)
                
                Spacer()
            }
            .padding()
        }
        .cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2), lineWidth: 2))
        .padding([.top, .horizontal])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "swift", authorName: "Juan Grabriel Gomila", courseTitle: "Diseño de apps para IOS 13 con swiftUI desde cero", originalPrice: "10.99€", discountPrice: "109.99€")
    }
}
