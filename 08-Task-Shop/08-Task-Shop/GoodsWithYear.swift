//
//  GoodsWithYear.swift
//  08-Task-Shop
//
//  Created by user on 14.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
/*Год выпуска товара
 Сколько лет товару*/
class GoodsWithYear: Goods {
    var releaseYear: Int
    
    override init() {
        releaseYear = 0
        super.init()
        self.count = 0
        self.priceOfOne = 0
        self.name = ""
    }
    
    init(name: String, count: Int, priceOfOne: Double, releaseYear: Int) {
        self.releaseYear = releaseYear
        super.init()
        self.count = count
        self.priceOfOne = priceOfOne
        self.name = name
    }
    
    func HowOldProduct() -> Int{
        return 2016 - releaseYear
    }
    
    override func information() -> String {
        return super.information() + " how old product: " + HowOldProduct().description + " year"
    }
    
}
