//
//  ContentView.swift
//  Space Travel
//
//  Created by Conner Luzier on 12/31/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyHStack {
                PageView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .edgesIgnoringSafeArea(.all)
    }
}

var moonRating: some View {
    Text("\(Image(systemName: "star")) 4.9")
        .overlay(
            Capsule()
                .stroke(Color.white, lineWidth: 0.5)
                .frame(width: 60, height: 28)
        )
        .padding(.bottom, 16)
}

var moonDetails: some View {
    HStack(spacing: 32.0) {
        Text("\(Image(systemName: "mappin.and.ellipse")) Moon")
        Text("\(Image(systemName: "clock.arrow.circlepath")) 3 days")
    }
    .frame(minWidth: 0, maxWidth: .infinity)
    .padding(.top, 16)
}

var marsRating: some View {
    Text("\(Image(systemName: "star")) 5.0")
        .overlay(
            Capsule()
                .stroke(Color.white, lineWidth: 0.5)
                .frame(width: 60, height: 28)
        )
        .padding(.bottom, 16)
}

var marsDetails: some View {
    HStack(spacing: 32.0) {
        Text("\(Image(systemName: "mappin.and.ellipse")) Mars")
        Text("\(Image(systemName: "clock.arrow.circlepath")) 8 days")
    }
    .frame(minWidth: 0, maxWidth: .infinity)
    .padding(.top, 16)
}

struct PageView: View {
    var body: some View {
        TabView {
            ForEach(0..<1) { i in
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
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 150)
                }
                ZStack {
                    Image("moon-background")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .edgesIgnoringSafeArea(.all)
                    VStack(alignment: .leading) {
                        Spacer()
                        moonRating
                        Text("Moon")
                            .font(.largeTitle)
                            .fontWeight(.light)
                        Divider().background(Color.white).padding(.trailing, 128)
                        Text("One small step for man, one giant leap for man kind. - Neil Armstrong\n\nGet your bags ready, we're going to collect some moon rocks!")
                            .fontWeight(.light)
                        Divider().background(Color.white).padding(.trailing, 128)
                        moonDetails
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 150)
                }
                ZStack {
                    Image("mars-background")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .edgesIgnoringSafeArea(.all)
                    VStack(alignment: .leading) {
                        Spacer()
                        marsRating
                        Text("Mars")
                            .font(.largeTitle)
                            .fontWeight(.light)
                        Divider().background(Color.white).padding(.trailing, 128)
                        Text("Nuke Mars - Elon Musk\n\nTravel to the red planet, Mars. Remember to bring your rover. We hope you don't mind a little sand in your boots!")
                            .fontWeight(.light)
                        Divider().background(Color.white).padding(.trailing, 128)
                        marsDetails
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 150)
                }
            }
        }
        .frame(
            width: UIScreen.main.bounds.width,
            height: UIScreen.main.bounds.height
        )
        .tabViewStyle(PageTabViewStyle())
        .background(Color.black)
        .onAppear(perform: {
           UIScrollView.appearance().bounces = false
         })
    }
}
