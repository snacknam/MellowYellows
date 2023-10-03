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
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
