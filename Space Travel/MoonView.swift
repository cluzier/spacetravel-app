//
//  MoonView.swift
//  Space Travel
//
//  Created by Conner Luzier on 12/31/21.
//

import SwiftUI

struct MoonView: View {
    @State var selection: Int = 0
    var body: some View {
        ZStack {
            Image("moon-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Spacer()
                //rating
                Text("Moon")
                    .font(.largeTitle)
                    .fontWeight(.light)
                Divider().background(Color.white).padding(.trailing, 128)
                Text("One small step for man, one giant leap for man kind. - Neil Armstrong\n\nGet your bags ready, we're going to collect some moon rocks!")
                    .fontWeight(.light)
                Divider().background(Color.white).padding(.trailing, 128)
                //details
            }
            .foregroundColor(.white)
            .padding(.horizontal, 24)
            .padding(.bottom, 150)
            
            ZStack {
                SideMenu(selected: $selection, options: ["HOME", "MOON", "MARS"])
                    .padding(.top, 700)
            }.padding(.leading, 25.0).frame(width: 250, height: 100, alignment: .center)
                
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

struct MoonView_Previews: PreviewProvider {
    static var previews: some View {
        MoonView()
    }
}

