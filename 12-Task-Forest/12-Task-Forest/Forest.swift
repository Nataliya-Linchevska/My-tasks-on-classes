//
//  Forest.swift
//  12-Task-Forest
//
//  Created by user on 16.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
class Forest {
    var countOfTrees: Int
    var arrayOfTrees = [Tree]()
    var arrayOfForester = [Forester(), Forester()]
    
    init() {
        countOfTrees =  Int(arc4random_uniform(20)+30)
        for _ in 0..<countOfTrees {
            let tree = Tree()
            arrayOfTrees.append(tree)
        }
    }
    
    func cutWood() {
        while arrayOfTrees.count > 0 {
            let indexOfTree = Int(arc4random_uniform(UInt32(arrayOfTrees.count)))
            let indexOfF0rester = Int(arc4random_uniform(UInt32(arrayOfForester.count)))
            let forester = arrayOfForester[indexOfF0rester]
            let tree = arrayOfTrees[indexOfTree]
            forester.money += tree.money
            arrayOfTrees.remove(at: indexOfTree)
        }
    }
//    func information() -> String {
//        var strInform = ""
//        for i in 0..<arrayOfForester.count {
//            strInform += arrayOfForester[i].money.description + " "
//        }
//        return strInform
//    }
    
    func  information() -> String {
        var forester1 = ""
        var forester2 = ""
        for _ in 0..<arrayOfForester.count {
            forester1 = arrayOfForester[0].money.description
            forester2 = arrayOfForester[1].money.description
        }
        return "forester1 have moneys: " + forester1 + " grn,  forester2 have moneys: " + forester2 + " grn"
    }
}





