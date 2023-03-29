//
//  Helpers.swift
//  Text Adventure
//
//  Created by admin on 1/8/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

func getRando(_ upperLimit : Int) -> Int {
    return Int.random(in: 0...upperLimit)
}


func clearScreen () {
    
    for _ in 1...10 {
        let stepCount : Int = getRando(2)
        var steps : String = ""
        for _ in 0...stepCount {
            steps = steps + " walk"
        }
        print(steps)
        
    }
}



