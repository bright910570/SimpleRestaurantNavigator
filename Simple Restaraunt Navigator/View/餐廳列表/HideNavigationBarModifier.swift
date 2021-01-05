//
//  HideNavigationBarModifier.swift
//  Simple Restaraunt Navigator
//
//  Created by 林亮宇 on 2021/1/5.
//  Copyright © 2021 Bright Lin. All rights reserved.
//

import Foundation
import SwiftUI

struct HideNavigationBarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .navigationBarTitle("")
    }
}
