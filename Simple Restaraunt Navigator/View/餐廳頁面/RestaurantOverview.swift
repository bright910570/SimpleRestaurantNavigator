//
//  RestaurantOverview.swift
//  Simple Restaraunt Navigator
//
//  Created by 林亮宇 on 2021/1/5.
//  Copyright © 2021 Bright Lin. All rights reserved.
//

import SwiftUI

struct RestaurantOverview: View {
    var restaurant : RestaurantItem
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .bottom){
                Text(restaurant.restaurantName)
                    .font(.custom("NotoSansTC-Regular", size: 30.0))
                Text(restaurant.position).font(.custom("NotoSansTC-Regular", size: 13.0))
            }
            RestaurantImage(restaurant: restaurant)
            
            Text( restaurant.restaurantOverview).font(.custom("NotoSansTC-Regular", size: 10.0)).frame(width: 0.7*UIScreen.screenWidth, height:0.3*UIScreen.screenWidth).lineSpacing(3.0)
            //padding(22.0)
            
        }
    }
}

struct RestaurantOverview_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantOverview(restaurant: RestaurantData().restaurants[0])
    }
}
