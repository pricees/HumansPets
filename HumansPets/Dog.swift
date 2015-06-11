//
//  Dog.swift
//  HumansPets
//
//  Created by dave on 6/10/15.
//  Copyright (c) 2015 dave. All rights reserved.
//

import Foundation

class Dog : Pet {
    
    // MARK: Dog property overrides
    override init() {
        super.init()
        petName = "generic dog"
        canMakeNoise = true
        petNoise = "Generic Bark, bark, bark!!!"
    }
}