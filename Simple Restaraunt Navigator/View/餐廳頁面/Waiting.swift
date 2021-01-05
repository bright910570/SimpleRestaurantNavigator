//
//  Waiting.swift
//  Simple Restaraunt Navigator
//
//  Created by 林亮宇 on 2021/1/5.
//  Copyright © 2021 Bright Lin. All rights reserved.
//

import SwiftUI

extension String {
    subscript (characterIndex: Int) -> Character {
        return self[index(startIndex, offsetBy: characterIndex)]
    }
}
struct Waiting: View {
    var restaurant: RestaurantItem
    var body: some View {
        VStack{
            Text("等候組數").font(.custom("NotoSansTC-Bold", size: 16.0))
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 4.0).frame(width:0.15*UIScreen.screenWidth, height:95).foregroundColor(Color.white)
                    Text(restaurant.getWaiting(decimal: 1)).font(.custom("NotoSansTC-Bold", size: 26.0))
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 4.0).frame(width:0.15*UIScreen.screenWidth, height:95).foregroundColor(Color.white)
                    Text(restaurant.getWaiting(decimal: 2)).font(.custom("NotoSansTC-Bold", size: 26.0))
                }
            }
            Button(action: restaurant.addWaiting) {
                ZStack{
                    Image("ReservationButton").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original)).resizable().frame(width:0.35*UIScreen.screenWidth, height:55)
                }
                                
            }
        }
        
    }
}

struct Waiting_Previews: PreviewProvider {
    static var previews: some View {
        Waiting(restaurant: RestaurantData().restaurants[0])
    }
}
