//
//  StarView.swift
//  MellowYellows
//
//  Created by 관식 on 2023/09/29.
//

import SwiftUI

struct StarView: View {
    
    @State var position = CGPoint(x: 0, y: 0)
    
    var body: some View {
        ZStack {
            MovingStarView(count: 80, size: 2)
            MovingStarView(count: 55, size: 3)
            MovingStarView(count: 30, size: 4)
        }
    }
}

extension StarView {
    private func moveRandomPosition(padding: CGFloat) -> CGPoint {
        let randomX = CGFloat.random(in: -padding..<UIScreen.main.bounds.width + padding)
        let randomY = CGFloat.random(in: -padding..<UIScreen.main.bounds.height + padding)
        return CGPoint(x: randomX, y: randomY)
    }
    
    private func MovingStarView(count: Int, size: CGFloat) -> some View {
        ForEach(0..<count, id: \.self) { _ in
            Circle()
                .foregroundColor(.lightYellow)
                .frame(width: size, height: size)
                .position(moveRandomPosition(padding: 40))
        }
        .animation(Animation.linear(duration: 60), value: position)
        .onAppear {
            position = moveRandomPosition(padding: 40)
            Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { _ in
                position = moveRandomPosition(padding: 40)
            }
        }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            StarView()
        }
    }
}
