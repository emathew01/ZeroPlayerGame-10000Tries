//
//  Monsters.swift
//  Text Adventure
//
//  Created by admin on 1/8/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

//setup monster struct
struct Monster {
    var name = String()
    var hitPoints = Int()
    var hitRate = Double()
    var damage = Int()
    
    
    
    func attacks() -> Bool { //returns true if hits
        
        let hitRoll : Int = getRando(99) + 1
        
        if Double(hitRoll) < self.hitRate * 100 {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return true
        } else {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return false
        }
    }
    
    mutating func WasHit(damage: Int) -> Bool { //return true if dead
        
        return true
        
    }
    
}
 
struct Fungus {
    var name = "fungus"
    var hitPoints = 50
    var hitRate = 0.80
    var damage = 10
    
    
    
    func attacks() -> Bool { //returns true if hits
        
        let hitRoll : Int = getRando(99) + 1
        
        if Double(hitRoll) < self.hitRate * 100 {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return true
        } else {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return false
        }
    }
    
    mutating func CheckDead() -> Bool { //return true if dead
        
        if hitPoints < 1{
            return true
        }
        else{
            return false
        }
        
    }
    
}

struct Orc {
    var name = "Orc"
    var hitPoints = 50
    var hitRate = 0.50
    var damage = 8
    
    
    
    func attacks() -> Bool { //returns true if hits
        
        let hitRoll : Int = getRando(99) + 1
        
        if Double(hitRoll) < self.hitRate * 100 {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return true
        } else {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return false
        }
    }
    
    mutating func CheckDead() -> Bool { //return true if dead
        
        if hitPoints < 1{
            return true
        }
        else{
            return false
        }
        
    }
    
}
struct Balloon {
    var name = "Balloon"
    var hitPoints = 20
    var hitRate = 0.90
    var damage = 5
    
    
    
    func attacks() -> Bool { //returns true if hits
        
        let hitRoll : Int = getRando(99) + 1
        
        if Double(hitRoll) < self.hitRate * 100 {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return true
        } else {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return false
        }
    }
    
    mutating func CheckDead() -> Bool { //return true if dead
        
        if hitPoints < 1{
            return true
        }
        else{
            return false
        }
        
    }
    
}
struct flyGuy {
    var name = "Fly Guy"
    var hitPoints = 50
    var hitRate = 0.99
    var damage = 10
    
    
    
    func attacks() -> Bool { //returns true if hits
        
        let hitRoll : Int = getRando(99) + 1
        
        if Double(hitRoll) < self.hitRate * 100 {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return true
        } else {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return false
        }
    }
    
    mutating func CheckDead() -> Bool { //return true if dead
        
        if hitPoints < 1{
            return true
        }
        else{
            return false
        }
        
    }
    
}
struct bearyEvil {
    var name = "Beary Evil"
    var hitPoints = 80
    var hitRate = 0.50
    var damage = 15
    
    
    
    func attacks() -> Bool { //returns true if hits
        
        let hitRoll : Int = getRando(99) + 1
        
        if Double(hitRoll) < self.hitRate * 100 {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return true
        } else {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return false
        }
    }
    
    mutating func CheckDead() -> Bool { //return true if dead
        
        if hitPoints < 1{
            return true
        }
        else{
            return false
        }
        
    }
    
}
struct donutBoss {
    var name = "Donut Boss"
    var hitPoints = 120
    var hitRate = 0.10
    var damage = 30
    
    
    
    func attacks() -> Bool { //returns true if hits
        
        let hitRoll : Int = getRando(99) + 1
        
        if Double(hitRoll) < self.hitRate * 100 {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return true
        } else {
            print("Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return false
        }
    }
    
    mutating func CheckDead() -> Bool { //return true if dead
        
        if hitPoints < 1{
            return true
        }
        else{
            return false
        }
        
    }
    
}
