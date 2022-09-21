//
//  ContentView.swift
//  Template01
//
//  Created by Muhammad Ahmad on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingActive: Bool = true
    var body: some View {
        if isOnboardingActive{
            BannerView()
        }
        else{
            HomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
