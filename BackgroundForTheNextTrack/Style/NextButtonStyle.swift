//
//  NextButtonStyle.swift
//  BackgroundForTheNextTrack
//
//  Created by Denis Evdokimov on 12/10/23.
//

import SwiftUI

struct NextButtonStyle: ButtonStyle {
    @State var isBackgroundAnimate: Bool = false
    private let duration = 0.22
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 60, height: 60)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .background(.gray.opacity( isBackgroundAnimate ? 0.6 : 0.0))
            .clipShape(.circle)
            .scaleEffect( isBackgroundAnimate ? 0.86 : 1.0)
            .animation(.linear(duration: duration), value: isBackgroundAnimate)
            .onChange(of: configuration.isPressed) { _, newValue in
                if (newValue) { // новое значение true, клик по кнопке
                    withAnimation(.linear(duration: duration)) {
                        isBackgroundAnimate = true
                    } completion: {
                        isBackgroundAnimate = false
                    }
                }
            }
    }
    
}
