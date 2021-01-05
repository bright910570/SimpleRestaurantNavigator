//
//  RestarauntItem.swift
//  Simple Restaraunt Navigator
//
//  Created by 林亮宇 on 2021/1/4.
//  Copyright © 2021 Bright Lin. All rights reserved.
//

import Foundation
import SwiftUI

class RestaurantItem : ObservableObject,Identifiable{
    
    let id : Int
    let restaurantName : String
    let position : String
    let openingHour : String
    @Published var waiting : String
    @Published var estimateWaiting : String
    let restaurantOverview : String
    let image :Image?
    private var waitingCount: Int
    
    init(id:Int,name:String, position:String, openingHour:String, waiting:Int, content : String){
        self.id = id
        self.restaurantName = name
        self.position = "| "+position
        var open = ""
        var close = ""
        var count = 0
        for character in openingHour{
            if count <= 3{
                open.append(character)
            }
            else {
                close.append(character)
            }
            count+=1
        }
        open.insert(":", at: open.index(open.startIndex, offsetBy: 2))
        close.insert(":", at: close.index(close.startIndex, offsetBy: 2))
        self.openingHour = "營業時間 : \(open) - \(close)"
        self.waitingCount = waiting
        self.waiting = "候位組數 : \(waiting)"
        if(waiting == 0){
            self.estimateWaiting = "預計等候時間 : 無需候位"
        }else{
            self.estimateWaiting = "預計等候時間 : ~\(waiting/5*10)分鐘"
        }
        self.restaurantOverview = content
        self.image = Image(name+".png")
    }
    
    func addWaiting (){
        waitingCount += 1
        self.waiting = "候位組數 :\(waitingCount)"
        self.estimateWaiting = "預計等候時間 : ~\(waitingCount/5*10)分鐘"
        print(waitingCount)
    }
    func getWaiting(decimal:Int) ->String{
        switch decimal {
        case 1:
            return("\(waitingCount/10)")
        case 2:
            return("\(waitingCount%10)")
        default:
            return("")
        }
    }
}
