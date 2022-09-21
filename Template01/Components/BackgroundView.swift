//
//  BackgroundView.swift
//  Template01
//
//  Created by Muhammad Ahmad on 21/09/2022.
//

import SwiftUI

struct BackgroundView: View {
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    @State private var isAnimated: Bool = false

    
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
        .blur(radius: isAnimated ? 0 : 10)
        .opacity(isAnimated ? 1 : 0)
        .scaleEffect(isAnimated ? 1 : 0.5)
        .animation(.easeOut(duration: 0.5), value: isAnimated)
        .onAppear{
            isAnimated = true
        }
    }
}
