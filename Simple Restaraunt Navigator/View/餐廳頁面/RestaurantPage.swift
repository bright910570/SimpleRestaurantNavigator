//
//  RestaurantPage.swift
//  Simple Restaraunt Navigator
//
//  Created by 林亮宇 on 2021/1/5.
//  Copyright © 2021 Bright Lin. All rights reserved.
//

import SwiftUI

struct RestaurantPage: View {
    var restaurant : RestaurantItem
    var menu = MenuContent(content: "test")
    @State var isMenuClicked = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        
                ScrollView{
                    ZStack{
                        
                        VStack{
                            Spacer().frame(height:20)
                            HStack(alignment: .top){
                                Button(action:{self.presentationMode.wrappedValue.dismiss()}){
                                    Image("Arrow_L").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original)).resizable().frame(width:15, height:25)
                                }
                                Text("日式餐飲>\(restaurant.restaurantName)").font(.custom("NotoSansTC-Regular", size: 12.0))
                                Spacer()
                                
                                    /*Button(action: {
                                        self.isLinkActive = true
                                 })*/Button(action:{self.isMenuClicked.toggle()}) {
                                        Image("menuButton").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original)).resizable().frame(width:35, height:45)
                                 }.offset(y:20).sheet(isPresented: $isMenuClicked) {
                                    PopupMenu()
                                }
                                Spacer().frame(width:15)
                            }
                            .padding(.horizontal, 0.05*UIScreen.screenWidth)
                            RestaurantOverview(restaurant: restaurant).offset(y:-10)
                            Waiting(restaurant: restaurant)
                            Spacer().frame(height:40)
                                                    }
                        if(menu.menuIsClicked == true){
                            PopupMenu()
                        }
                    }
            }
                .frame(height:UIScreen.screenHeight-80)
    }
}

struct RestaurantPage_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantPage(restaurant: RestaurantData().restaurants[0])
    }
}
