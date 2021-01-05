//
//  RestarauntInfo.swift
//  Simple Restaraunt Navigator
//
//  Created by 林亮宇 on 2021/1/4.
//  Copyright © 2021 Bright Lin. All rights reserved.
//

import Foundation
import Combine

//load data here
//var restaraunts: [RestarauntItem] = load("restarquntInfoData.json")
//read restaraunt data from .json file
//hardcoded here for now
final class RestaurantData:ObservableObject{
    private var restaraunt1 = RestaurantItem(id:0, name: "一蘭拉麵", position: "LG1 - B37", openingHour: "11002300", waiting: 16, content: "一蘭並沒有花巧的菜單，只專注於「天然豚骨湯拉麵」一款。\n拉麵分有多種不同口味 — 醬油、鹽味及味噌等，湯底也有雞湯和魚湯等各種組合。\n一蘭永遠研究亦追求世界第一豚骨湯拉麵的美味。")
    private var restaraunt2 = RestaurantItem(id:1, name: "kura壽司", position: "LG1 - B15", openingHour: "11002200", waiting: 10, content: "")
    private var restaraunt3 = RestaurantItem(id:2, name: "金子半之助", position: "LG1 - A12", openingHour: "10002200", waiting: 0, content: "")
    @Published var restaurants:[RestaurantItem] = []
    init(){
        restaurants.append(restaraunt1)
        restaurants.append(restaraunt2)
        restaurants.append(restaraunt3)
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
