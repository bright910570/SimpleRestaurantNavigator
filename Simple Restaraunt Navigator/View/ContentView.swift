//
//  ContentView.swift
//  Simple Restaraunt Navigator
//
//  Created by 林亮宇 on 2021/1/4.
//  Copyright © 2021 Bright Lin. All rights reserved.
//

import SwiftUI
extension Color {
    public static var reservationOrange:Color{
        return Color(red: 255.0/255.0, green: 128.0/255.0, blue: 85.0/255.0)
    }
    public static var backgroundGray:Color{
        return Color(red: 230.0/255.0, green: 230.0/255.0, blue: 230.0/255.0)
    }
    public static var navigatorGreen:Color{
        return Color(red: 128.0/255.0, green: 200.0/255.0, blue: 61.0/255.0)
    }

}
extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct ContentView: View {
    let restaurantData = RestaurantData()
    var body: some View {
        VStack(alignment: .center, spacing: 0.0) {
            ZStack{
                Rectangle()
                .fill(Color.navigatorGreen)
                .frame(width: UIScreen.screenWidth, height: 45)
                HStack{
                    Button(action: {
                    }) {
                        Image("navigatorButton").resizable().frame(width:25, height:20).foregroundColor(Color.white)
                    }
                    Spacer()
                        .frame(width: 14.0)
                    Text("Hello world 商場 | 美食地圖").foregroundColor(Color.white).font(.custom("NotoSansTC-Regular", size: 14.0))
                    Spacer()
                }
                .padding(.horizontal, 5.0)
                
            }
            ZStack {
            Rectangle()
            .fill(Color.backgroundGray)
                VStack(alignment: .leading){
                    /*
                    Text("日式料理").foregroundColor(Color.black).font(.custom("NotoSansTC-Regular", size: 18.0)).padding([.top, .leading], 20.0)*/
                    RestaurantItemList()
                }
            }
        
           // .frame(width:500, height:700)
        Rectangle()
            .fill(Color.navigatorGreen)
            .frame(width: UIScreen.screenWidth, height: 35)
        }
    .environmentObject(restaurantData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environmentObject(RestaurantData())
    }
}
