//
//  main.swift
//  12-Task-Forest
//
//  Created by user on 16.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

/* Лісники рубають ліс, за що отримують кошти.
 В залежності від товщини дерева, за кожне зрубане дерево лісники отрумують (рандомно) від 5 до 10 грн.
 Кількість дерев від 20 до 50. 
 Запускають в ліс двох лісників.
 Лісники рубають ліс поки є дерева.
 Виграв той лісник - в кого бабла більше.
 */

var forest = Forest()
forest.cutWood()
print(forest.information())
