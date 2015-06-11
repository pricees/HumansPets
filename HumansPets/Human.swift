
//
//  Human.swift
//  HumansPets
//
//  Created by dave on 6/10/15.
//  Copyright (c) 2015 dave. All rights reserved.
//

import Foundation

class Human {
    var name: String = "null"
    var pet: Pet?
    
    // MARK: Make some pet noise
    func makePetMakeNoise(number: Int) -> String {
        let noiseString = pet!.makeNoise(number)
        return noiseString
    }
    
    // MARK: Pet eat food
    func feedPet() -> String {
        return pet!.eat()
    }
    
    // MARK: Return human count
    func popluationCount(number: Int) -> Int {
        return number
    }
}