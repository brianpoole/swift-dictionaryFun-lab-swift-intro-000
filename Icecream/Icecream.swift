//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String]{
        var r_arr: [String] = []
        for (d_name, d_flavor) in favoriteFlavorsOfIceCream{
            if(flavor == d_flavor){
                r_arr.append(d_name)
            }
        }
        
        return r_arr
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var r_int = 0
        for (_, d_flavor) in favoriteFlavorsOfIceCream{
            if(flavor == d_flavor){
                r_int += 1
            }
        }
        
        return r_int
    }
    
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        if let flavor = favoriteFlavorsOfIceCream[person]{
            return flavor
        }
        return nil
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool{
        if favoriteFlavorsOfIceCream[person] != nil{
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
        
        return false
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool{
        let result = favoriteFlavorsOfIceCream.removeValue(forKey: person)
        if result != nil{
            return true
        }
        
        return false
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees( ) -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        let result = favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
        if result == nil{
            return true
        }
        return false
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList( ) -> String {
        var r_str: String = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted( )
        let attendee_count = numberOfAttendees()
        for (i, person) in allNames.enumerated(){
            if let flavor = favoriteFlavorsOfIceCream[person]{
                r_str += "\(person) likes \(flavor)"
                if i < attendee_count - 1{
                    r_str += "\n"
                }
            }
        }
        
        return r_str
    }
    
    
    
    
    
    
    

}
