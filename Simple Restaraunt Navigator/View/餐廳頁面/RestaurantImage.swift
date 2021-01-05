//
//  RestaurantImage.swift
//  Simple Restaraunt Navigator
//
//  Created by 林亮宇 on 2021/1/5.
//  Copyright © 2021 Bright Lin. All rights reserved.
//

import SwiftUI

struct RestaurantImage: View {
    var restaurant : RestaurantItem
    var body: some View {
        ZStack{
            Image(restaurant.restaurantName).resizable().frame(width: 0.7*UIScreen.screenWidth, height: 200.0)
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("Arrow_L").resizable().frame(width:10, height:20).foregroundColor(Color.white)
                }
                Spacer().frame(width:0.6*UIScreen.screenWidth)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("Arrow_R").resizable().frame(width:10, height:20).foregroundColor(Color.white)
                }

            }
        }
    }
}

struct RestaurantImage_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantImage(restaurant: RestaurantData().restaurants[0])
    }
}
