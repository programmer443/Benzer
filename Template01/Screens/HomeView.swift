//
//  HomeView.swift
//  Template01
//
//  Created by Muhammad Ahmad on 21/09/2022.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingActive: Bool = false
    @State private var isAnimated: Bool = false

    var body: some View {
//    Mark: ZStack
        ZStack{
            VStack(spacing: 20){
                Spacer()
                    
                ZStack {
                    BackgroundView(shapeColor: Color.gray, shapeOpacity: 0.1)
                    
                    Image("character-2")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .offset(y: isAnimated ? 35 : -35)
                        .animation(
                            Animation
                            .easeInOut(duration: 4)
                            .repeatForever(),
                            value: isAnimated)
                }
                
                Spacer()
                
                Text("""
                The time that leads to mastery is
                dependent on the intesity of our
                focus.
                """)
                .font(.title3)
                .multilineTextAlignment(.center)
                .fontWeight(.light)
                .foregroundColor(Color.gray)
                .padding()
                
                Spacer()
                
                Button(action: {
                    withAnimation{
                        playSound(sound: "success", type: "m4a")
                        isOnboardingActive = true
                    }
                }, label: {
                    HStack{
                        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                            .imageScale(.large)
                        Text("Restart")
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.bold)
                    }
                    .foregroundColor(Color.white)
                }).buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .controlSize(.large)
                
            }
        }
        .onAppear(perform: {
            // dealy animation from now + 0.5
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimated = true
            })
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
