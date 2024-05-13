//
//  main.swift
//  Dictionary
//
//  Created by Abhishek Gupta on 21/03/24.
//

import Foundation

//Dictionary
//A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering.
//Dictionary is unordered data structure in Swift.
//Dictionary is value type in Swift.

//Creating empty Dictionary
var name: [String: String] = [:]


//Dict with duplicate key and value
//var fruits: [String: Int] = ["Apple": 3, "Banana": 2, "Orange": 4, "Apple": 3]
//Complietime warrning:
//Dictionary literal of type '[String : Int]' has duplicate entries for string literal key 'Apple'

//And

//When you run it then program will get run time crash with error
//Fatal error: Dictionary literal contains duplicate keys

//Dictionary use hash-table to store unique key value lookups

//Try to insert same key
var animal: [String: Int]
animal = ["Lion": 1, "Elephant": 4, "Tiger": 3]
animal["Lion"] = 3
print(animal)
//output: ["Elephant": 4, "Tiger": 3, "Lion": 3]
//It will update the value for the same key


//Try to access value for a key
print(animal["Lion"])
//output: Optional(3)

//Try to access value for a key which is not prasent in dict
print(animal["abc"])
//output: nil
