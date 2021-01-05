//
//  RestarauntDetails.swift
//  Simple Restaraunt Navigator
//
//  Created by 林亮宇 on 2021/1/4.
//  Copyright © 2021 Bright Lin. All rights reserved.
//

import SwiftUI

struct RestaurantDetails: View {
    
    @EnvironmentObject var restaurantData: RestaurantData
    @State private var waiting = 0
    var restaurant: RestaurantItem
    
    var body: some View {
        
        VStack(alignment:.leading) {
            /**
            Button(action:{ self.restaraunt.updateVariables(name: "一蘭拉麵", position: "LG1 - B37", openingHour: "11002300", waiting: 16, content: "一蘭並沒有花巧的菜單，只專注於「天然豚骨湯拉麵」一款。拉麵分有多種不同口味 — 醬油、鹽味及味噌等，湯底也有雞湯和魚湯等各種組合。一蘭永遠研究亦追求世界第一豚骨湯拉麵的美味。")}) {
            Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
            }
 **/
            Text(restaurant.restaurantName)
                .font(.custom("NotoSansTC-Regular", size: 16.0))
            Text(restaurant.position).font(.custom("NotoSansTC-Regular", size: 8.0))
            //padding(22.0)
            Spacer()
                .frame(height: 10.0)
            Text(restaurant.openingHour).font(.custom("NotoSansTC-Regular", size: 8.0))
            Spacer()
                .frame(height: 5.0)
            Text(restaurant.waiting).font(.custom("NotoSansTC-Regular", size: 8.0))
            Spacer()
                .frame(height: 5.0)
            Text(restaurant.estimateWaiting).font(.custom("NotoSansTC-Regular", size: 8.0))
        }
    }
}

struct RestaurantDetails_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetails(restaurant: RestaurantData().restaurants[0])
        /*
        Group{
            RestarauntDetails(resteraunt: restaraunts[0])
            .environmentObject(RestarauntData())
            RestarauntDetails(resteraunt: restaraunts[1])
            .environmentObject(RestarauntData())
        }
        .previewLayout(.fixed(width:0.9*UIScreen.screenWidth, height: 400))*/
    }
}
