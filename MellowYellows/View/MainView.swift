//
//  ContentView.swift
//  MellowYellows
//
//  Created by 관식 on 2023/09/27.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            StarView()
            MoonView()
            VStack(spacing: 320) {
                HeaderView()
                BodyView()
            }
        }
    }
}

extension MainView {
    private func HeaderView() -> some View {
        VStack(spacing: 4) {
            Text("October 10")
                .font(.system(size: 20, weight: .regular))
            Text("Waning Crescent")
                .font(.system(size: 40, weight: .medium))
        }
        .foregroundColor(.white)
        .frame(height: 160)
    }
    
    private func BodyView() -> some View {
        Text("The moon is almost gone, but the stars are still shining bright. Take a photo that showcases the contrast between the moon's fading light and the sparkling sky!")
            .foregroundColor(.white)
            .font(.system(size: 18, weight: .light))
            .multilineTextAlignment(.center)
            .frame(height: 140, alignment: .top)
            .padding(.horizontal, 24)
            .lineSpacing(4)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
