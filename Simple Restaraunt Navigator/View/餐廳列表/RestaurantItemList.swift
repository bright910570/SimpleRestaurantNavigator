//
//  RestaurantItemList.swift
//  Simple Restaraunt Navigator
//
//  Created by 林亮宇 on 2021/1/5.
//  Copyright © 2021 Bright Lin. All rights reserved.
//

import SwiftUI

extension View {
    func hideNavigationBar() -> some View {
        modifier(HideNavigationBarModifier())
    }
}
struct RestaurantItemList: View {
    
    init() {
        /*
        if #available(iOS 14.0, *) {
            // iOS 14 doesn't have extra separators below the list by default.
        } else {
            // To remove only extra separators below the list:
            UITableView.appearance().tableFooterView = UIView()
        }*/

        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0)
        UITableViewCell.appearance().backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0)
        UIScrollView.appearance().backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0)
        
    }
    var body: some View {
        
        NavigationView{
            List(RestaurantData().restaurants){ restaurant in
                ZStack{
                    RestaurantItemCell(restaurant: restaurant)
                    NavigationLink(destination: RestaurantPage(restaurant: restaurant).hideNavigationBar())
                        {
                        EmptyView()
                    }
                }
                
            }
            .navigationBarTitle("日式餐飲", displayMode: .inline ).font(.custom("NotoSansTC-Regular", size: 16.0)).buttonStyle(PlainButtonStyle())
            //.navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct RestaurantItemList_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantItemList()
    }
}
