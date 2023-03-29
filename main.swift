//
//
//  Zero Player Game
//  By Elizabeth Mathew
//
//
//
import Darwin

import Foundation
var myHero = heroes[2] // Change ME
var deaths = 0
print("Welcome to the Dungeon!")
var wins = 0;
// HERO SETUP
// setup array of heroes
var heroes : [Adventurer] = []
var Raspberry = Warrior()
Raspberry.name = "Raspberry"
heroes.append(Raspberry)

var Blueberry = Mage()
Blueberry.name = "Blueberry"
heroes.append(Blueberry)

var Strawberry = Rogue()
Strawberry.name = "Strawberry"
heroes.append(Strawberry)


//randomly selecting a hero to use

print("\(myHero.name) was selected!")
//sleep(2)
myHero.fullStats()
//sleep(2)


func fungusDuel(){
    print("A Fungus Met You IN Another Room!")
    var mons = Fungus()
    var monsHit = mons.attacks()
    while true{
        

        if monsHit == false{
            myHero.hitPoints = myHero.hitPoints - mons.damage
        }
        myHero.status()
        var checkMonsDead = mons.CheckDead()
        if myHero.hitPoints < 1{
            print("Player Died!")
             deaths = deaths + 1;
            myHero.hitPoints = myHero.dhitPoints
            myHero.damage = myHero.ddamage
            myHero.hitRate = myHero.dhitRate
            break
        }
        if checkMonsDead == true{
            print("Player has killed the Fungus!")
            wins = wins + 1
            print("Player will recieve a stronger sword!(+2 Damage!)")
            print("Player Has Picked A Med Kit!(+10 HP)")
  //sleep(1)
            myHero.damage = myHero.damage + 2
            myHero.hitPoints = myHero.hitPoints + 10
            myHero.status()
            break
        }

        var hattack = myHero.attack()
        if hattack == true{
            mons.hitPoints = mons.hitPoints - myHero.damage
        }
        if checkMonsDead == true{
            print("Player has killed the Fungus!")
            wins = wins + 1
            print("Player will recieve a stronger sword!(+5 Damage!)")
            myHero.damage = myHero.damage + 5
            break
        }
    //sleep(1)

    }
}

func orcDuel(){
    print("A ORC Chased You You IN Another Room!")
    var mons = Orc()
    var monsHit = mons.attacks()
    while true{
        

        if monsHit == false{
            myHero.hitPoints = myHero.hitPoints - mons.damage
        }
        myHero.status()
        var checkMonsDead = mons.CheckDead()
        if myHero.hitPoints < 1{
            print("Player Died!")
             deaths = deaths + 1;
            myHero.hitPoints = myHero.dhitPoints
            myHero.damage = myHero.ddamage
            myHero.hitRate = myHero.dhitRate
            break
        }
        if checkMonsDead == true{
            print("Player has killed the Orc!")
            wins = wins + 1
            print("Player Has Picked A Med Kit!(+50 HP)")
          //sleep(1)
            myHero.damage = myHero.damage + 0
            myHero.hitPoints = myHero.hitPoints + 50
            myHero.status()
            break
        }

        var hattack = myHero.attack()
        if hattack == true{
            mons.hitPoints = mons.hitPoints - myHero.damage
        }
        if checkMonsDead == true{
            print("Player has killed the Orc!")
            print("Player gets a sword! (+5 attack)")
            myHero.damage = myHero.damage + 5
            break
        }
        //sleep(1)

    }
}
func balDuel(){
    print("A BALLOON Floated INTO Your Room!")
    var mons = Balloon()
    var monsHit = mons.attacks()
    while true{
        

        if monsHit == false{
            myHero.hitPoints = myHero.hitPoints - mons.damage
        }
        myHero.status()
        var checkMonsDead = mons.CheckDead()
        if myHero.hitPoints < 1{
            print("Player Died!")
             deaths = deaths + 1
            myHero.hitPoints = myHero.dhitPoints
            myHero.damage = myHero.ddamage
            myHero.hitRate = myHero.dhitRate
            break
        }
        if checkMonsDead == true{
            print("Player has Popped the Balloon!")
            wins = wins + 1
            print("Player Has Picked A Med Kit!(+6 HP)")
            //sleep(1)
            myHero.damage = myHero.damage + 0
            myHero.hitPoints = myHero.hitPoints + 6
            myHero.status()
            break
        }

        var hattack = myHero.attack()
        if hattack == true{
            mons.hitPoints = mons.hitPoints - myHero.damage
        }
        if checkMonsDead == true{
            print("Player has Popped the Balloon!")
            wins = wins + 1
            print("Player Has Picked A Med Kit!(+6 HP)")
          //sleep(1)
            myHero.damage = myHero.damage + 0
            myHero.hitPoints = myHero.hitPoints + 6
            myHero.status()
            break
        }
        //sleep(1)

    }
}
func flyDuel(){
    print("A Fly Guy Chased You You IN Another Room!")
    var mons = flyGuy()
    var monsHit = mons.attacks()
    while true{
        

        if monsHit == false{
            myHero.hitPoints = myHero.hitPoints - mons.damage
        }
        myHero.status()
        var checkMonsDead = mons.CheckDead()
        if myHero.hitPoints < 1{
            print("Player Died!")
             deaths = deaths + 1;
            myHero.hitPoints = myHero.dhitPoints
            myHero.damage = myHero.ddamage
            myHero.hitRate = myHero.dhitRate
            break
        }
        if checkMonsDead == true{
            print("Player has killed the Fly Guy!")
            wins = wins + 1
            print("Player Has Picked A Better Sword(+5 Damage)")
            print("Player Gained A Med Kit(+10 HP)")
            //sleep(1)
            myHero.damage = myHero.damage + 5
            myHero.hitPoints = myHero.hitPoints + 10
            myHero.status()
            break
        }

        var hattack = myHero.attack()
        if hattack == true{
            mons.hitPoints = mons.hitPoints - myHero.damage
        }
        if checkMonsDead == true{
            print("Player has killed the Orc!")
            wins = wins + 1
            print("Player gets a sword! (+20 attack)")
            myHero.damage = myHero.damage + 20
            break
        }
        //sleep(1)

    }
}
func bearyDuel(){
    print("A Beary Evil Bear Ran INTO Your Room!")
    var mons = bearyEvil()
    var monsHit = mons.attacks()
    while true{
        

        if monsHit == false{
            myHero.hitPoints = myHero.hitPoints - mons.damage
        }
        myHero.status()
        var checkMonsDead = mons.CheckDead()
        if myHero.hitPoints < 1{
            print("Player Died!")
             deaths = deaths + 1;
            myHero.hitPoints = myHero.dhitPoints
            myHero.damage = myHero.ddamage
            myHero.hitRate = myHero.dhitRate
            break
        }
        if checkMonsDead == true{
            print("Player has Wiped The Bear!")
            wins = wins + 1
            print("Player Has Picked A Med Kit!(+ 50 HP)")
            //sleep(1)
            myHero.damage = myHero.damage + 0
            myHero.hitPoints = myHero.hitPoints +  50
            myHero.status()
            break
        }

        var hattack = myHero.attack()
        if hattack == true{
            mons.hitPoints = mons.hitPoints - myHero.damage
        }
        if checkMonsDead == true{
            print("Player has Punched The Bear!")
            wins = wins + 1
            print("Player Has Picked A Med Kit!(+ 50 HP)")
            myHero.damage = myHero.damage + 0
            myHero.hitPoints = myHero.hitPoints +  50
            myHero.status()
            break
        }
        //sleep(1)

    }
}
func donutDuel(){
    print("A Donut Boss Spawned!!")
    //sleep(1)
    var mons = donutBoss()
    var monsHit = mons.attacks()
    while true{
        

        if monsHit == false{
            myHero.hitPoints = myHero.hitPoints - mons.damage
        }
        myHero.status()
        var checkMonsDead = mons.CheckDead()
        if myHero.hitPoints < 1{
            print("Player Died!")
             deaths = deaths + 1
            myHero.hitPoints = myHero.dhitPoints
            myHero.damage = myHero.ddamage
            myHero.hitRate = myHero.dhitRate
            break
        }
        if checkMonsDead == true{
            print("Player has Wiped The Donut Boss!")
            wins = wins + 1
            print("Player Has Picked A Increased Hit Chance Potion!")
            //sleep(1)
            myHero.damage = myHero.damage + 0
            myHero.hitRate = myHero.hitRate + 0.2
            myHero.status()
            
            break
        }

        var hattack = myHero.attack()
        if hattack == true{
            mons.hitPoints = mons.hitPoints - myHero.damage
        }
        
        //sleep(1)

    }
}
var a = 10000
var rounds = 0;
while rounds < a{
    let num = getRando(5)
    
    //sleep(2)
    if num == 0{
            orcDuel()
            
        }
    else if num == 1{
            fungusDuel()
        }
    else if num == 2{
            balDuel()
        }
    else if num == 3{
        flyDuel()
    }
    else if num == 4{
        bearyDuel()
    }
    else if num == 5{
        donutDuel()
    }
    rounds = rounds + 1
    print("You Move to the next room....")
    clearScreen()
    print("The Player Won \(wins) wins in \(rounds) rounds.")
    print("Player died \(deaths) times in \(rounds) rounds.")
}



