//
//  Transition.swift
//  BackgroundForTheNextTrack
//
//  Created by Denis Evdokimov on 12/10/23.
//

import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        AnyTransition(.scale.combined(with:.opacity))
    }
}
