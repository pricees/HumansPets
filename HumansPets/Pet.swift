//
//  Pet.swift
//  HumansPets
//
//  Created by dave on 6/10/15.
//  Copyright (c) 2015 dave. All rights reserved.
//

import Foundation

class Pet {
    var petName: String = "Generic pet name"
    var canMakeNoise: Bool = true
    var petNoise: String = "Generic pet noise!!!"
    
    // MARK: Make some animal noise
    func makeNoise(number: Int) -> String {
        if canMakeNoise {
            let count = number - 1
            var noiseString = "\(petNoise)"
            
            for var i = 0; i < count; i++ {
                noiseString += "\(petNoise)"
            }
            return "\(noiseString)"
        } else {
            return "\(petName) *remains silent*"
        }
    }
    
    // MARK: Eat something
    func eat() -> String {
        return "\(petName) is eating."
    }
}