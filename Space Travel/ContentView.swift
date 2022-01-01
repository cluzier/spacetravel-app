//
//  ContentView.swift
//  Space Travel
//
//  Created by Conner Luzier on 12/31/21.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Int = 0
    var body: some View {
        ZStack {
            Image("space-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Spacer()
                Text("Space Travel")
                    .font(.largeTitle)
                    .fontWeight(.light)
                Divider().background(Color.white).padding(.trailing, 128)
                Text("Finally, it's here: Travelling to space. With just a few simple clicks, you can book your ticket on the next shuttle to the moon!\n\nFor real adventurous travellers, we also offer trips to Mars. In our shuttle X1, you will be there in no time with the newest and most comfortable travelling options.")
                    .fontWeight(.light)
                Divider().background(Color.white).padding(.trailing, 128)
                details
            }
            .foregroundColor(.white)
            .padding(.horizontal, 24)
            .padding(.bottom, 64)
            
            SideMenu(selected: $selection, options: ["HOME", "MOON", "MARS"])
                .padding(.bottom, 224)
        }
    }
    
    var rating: some View {
        Text("\(Image(systemName: "star")) 4.9")
            .overlay(
                Capsule()
                    .stroke(Color.white, lineWidth: 0.5)
                    .frame(width: 60, height: 28)
            )
            .padding(.bottom, 16)
    }
    
    var details: some View {
        HStack(spacing: 32.0) {
            Text("\(Image(systemName: "mappin.and.ellipse")) Moon")
            Text("\(Image(systemName: "clock.arrow.circlepath")) 3 days")
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding(.top, 16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
