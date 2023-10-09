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
            VStack {
                HeaderView()
                MoonView()
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
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
