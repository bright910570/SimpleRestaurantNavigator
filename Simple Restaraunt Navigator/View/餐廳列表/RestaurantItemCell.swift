//
//  RestarauntItemCell.swift
//  Simple Restaraunt Navigator
//
//  Created by 林亮宇 on 2021/1/4.
//  Copyright © 2021 Bright Lin. All rights reserved.
//

import SwiftUI

struct RestaurantItemCell: View {
    
    var restaurant: RestaurantItem
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 6).fill(Color.white).frame(width: 0.9*UIScreen.screenWidth,height: 140 )
            HStack{
                Image(restaurant.restaurantName).resizable().frame(width: 0.4*UIScreen.screenWidth, height: 120.0)
                Spacer()
                    .frame(width: 14.0)
                VStack{
                    RestaurantDetails(restaurant: restaurant)
                    Spacer().frame(height:20.0)
                }
                
            }
            .padding(.trailing, 55.0)
        }.frame(height:140)
    }
}

struct RestarauntItemCell_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantItemCell(restaurant: RestaurantData().restaurants[2])
        .environmentObject(RestaurantData())
    }
}
