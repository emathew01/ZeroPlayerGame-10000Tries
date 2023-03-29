//
//  Heroes.swift
//  Text Adventure
//
//  Created by admin on 1/8/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

// setup adventurer class, you may add additional properties or methods to the super, you may rename anything in here
class Adventurer {
    
    var name : String
    var hitPoints : Int
    var damage : Int
    var hitRate : Double
    var dhitPoints : Int
    var ddamage : Int
    var dhitRate : Double
    
    init() {
        self.name = ""
        self.hitPoints = 100
        self.damage = 0
        self.hitRate = 0
        self.dhitPoints = 100
        self.ddamage = 0
        self.dhitRate = 0
    }
    
    func status() { //returns status
        
        print("Hit Points Remaining: \(self.hitPoints)")
        print("Damage: \(self.damage)")
    }
    func fullStats(){
        print("Hero Name: \(self.name)")
        print("Hit Points Remaining: \(self.hitPoints)")
        print("Damage: \(self.damage)")
        print("Hit Chance: \(self.hitRate)")
    }
    
    func attack() -> Bool { //returns true if hits
        
        var hitRoll : Int = getRando(99) + 1
        if Double(hitRoll) < self.hitRate * 100 {
            print("Player Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            print("Player has hit the Monster")
            return true
        } else {
            print("Player Rolled \(hitRoll), needed less than \(self.hitRate * 100)")
            return false
        }
    
    }
    
    func WasHit(damage: Int) -> Bool { //return true if dead
        
        return false
        
    }
    
}// end adventurer


// define adventurer subclasses, create at least 1 override method for each subclass
class Warrior : Adventurer {
    
    override init() {
        super.init()
        self.damage = 5
        self.hitRate = 0.60
        self.hitPoints = 100
        self.ddamage = 5
        self.dhitRate = 0.60
        self.dhitPoints = 100
    }
}

class Mage : Adventurer {
 
    override init() {
        super.init()
        self.damage = 10
        self.hitRate = 0.30
        self.hitPoints = 60
        self.ddamage = 10
        self.dhitRate = 0.30
        self.dhitPoints = 60
        
    }
}

class Rogue : Adventurer {
    
    override init() {
        super.init()
        self.damage = 8
        self.hitRate = 0.50
        self.hitPoints = 85
        self.ddamage = 8
        self.dhitRate = 0.30
        self.dhitPoints = 85
    }
}

