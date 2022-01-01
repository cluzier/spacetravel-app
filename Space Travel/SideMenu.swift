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
            HStack (alignment: .center) {
                ForEach(options.indices) { i in
                    Button(action: {
                        withAnimation {
                            self.selected = i
                        }
                    }, label: {
                        Text(options[i])
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(self.selected == i ? Color.white : Color.white.opacity(0.6))
                    }).buttonStyle(PlainButtonStyle())
                    
                    
                    
                    if i < options.count - 1 {
                        Divider()
                            .frame(width: nil, height: nil, alignment: .center)
                            .opacity(0.7)
                    }
                }
            }
        }
    }
}
