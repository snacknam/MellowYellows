//
//  MoonView.swift
//  MellowYellows
//
//  Created by 관식 on 2023/10/03.
//

import SwiftUI

struct MoonView: View {
    @StateObject private var viewModel = MoonViewModel()
    @State private var thorb = false
    
    var body: some View {
        ZStack {
            Image("shadow")
            withAnimation(.easeInOut(duration: 2).repeatForever()) {
                Image("2")
                    .blur(radius: thorb ? 8 : 24)
                    .onAppear{
                        thorb.toggle()
                    }
            }
            Image("2")
        }
        .rotationEffect(.degrees(20))
    }
}

struct MoonView_Previews: PreviewProvider {
    static var previews: some View {
        MoonView()
    }
}
