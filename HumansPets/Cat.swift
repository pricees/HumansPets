//
//  Cat.swift
//  HumansPets
//
//  Created by dave on 6/10/15.
//  Copyright (c) 2015 dave. All rights reserved.
//

import Foundation

class Cat : Pet {
    
    // MARK: Cat property overrides
    override init() {
        super.init()
            petName = "generic cat"
            canMakeNoise = true
            petNoise = "Generic meow, meow, moew!!!"
    }
    
    // MARK: Cat eat override
    override func eat() -> String {
        let eatMessage = "I'm still hungry, meow."
        return eatMessage
    }
}