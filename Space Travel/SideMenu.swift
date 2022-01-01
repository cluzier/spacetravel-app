//
//  SideMenu.swift
//  Space Travel
//
//  Created by Conner Luzier on 12/31/21.
//


import SwiftUI

struct SideMenu: View {
    
    @Binding var selected: Int
    var options: [String]
    
    var body: some View {
        GeometryReader { geo in
            HStack {
                ForEach(options.indices) { i in
                    Button(action: {
                        withAnimation {
                            self.selected = i
                        }
                    }, label: {
                        Text(options[i])
                            .font(.body)
                            .fontWeight(.bold)
                            .padding(.horizontal, 10)
                            .foregroundColor(self.selected == i ? Color.blue : Color.black.opacity(0.6))
                    }).buttonStyle(PlainButtonStyle())
                    
                    if i < options.count - 1 {
                        Divider()
                            .frame(width: nil, height: 45, alignment: .center)
                            .opacity(0.7)
                    }
                    
                }
            }
            .padding(.top, 10)
            .padding(.horizontal, 15)
            .background(Color.white)
            .cornerRadius(8)
            .offset(x: geo.size.height * -0.65, y: -10)
            .rotationEffect(Angle(degrees: -90), anchor: .topLeading)
            
        }
         
    }
}
