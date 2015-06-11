//
//  AppDelegate.swift
//  HumansPets
//
//  Created by dave on 6/10/15.
//  Copyright (c) 2015 dave. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Initialize arrays
        var humans:[Human] = []
        var pets:[Pet] = []

        func setupArrays() {
        
            // Create a cat
            var tom = Cat()
            tom.petName = "Tom"
            tom.canMakeNoise = true
            // Individual pet noise
            tom.petNoise = "Meow, meow, meow!!!"
            tom.petNoise = tom.makeNoise(5)
            
            pets.append(tom)
            
            // Create another cat
            var felix = Cat()
            felix.petName = "Felix"
            felix.canMakeNoise = false
            felix.petNoise = felix.makeNoise(0)
            
            pets.append(felix)
            
            // Create a dog
            var dug = Dog()
            dug.petName = "Dug"
            dug.canMakeNoise = true
            dug.petNoise = "SQUIRREL, SQUIRREL, SQUIRREL!!!"
            dug.petNoise = dug.makeNoise(2)
            
            pets.append(dug)
            
            // Create another dog
            var sybil = Dog()
            sybil.petName = "Sybil"
            sybil.canMakeNoise = false
            sybil.petNoise = sybil.makeNoise(0)
            
            pets.append(sybil)

            // Create another dog
            var neve = Dog()
            neve.petName = "Neve"
            neve.canMakeNoise = true
            neve.petNoise = "Arf, arf, arf!"
            neve.petNoise = neve.makeNoise(3)
            
            pets.append(neve)
  
        
            // Create a human
            var dave = Human()
            dave.name = "Dave"
            dave.pet = sybil
            dave.makePetMakeNoise(0)
            
            humans.append(dave)
            
            // Create another human
            var candice = Human()
            candice.name = "Candice"
            candice.pet = dug
            candice.makePetMakeNoise(0)
            
            humans.append(candice)

            
            // Create another human
            var matt = Human()
            matt.name = "Matt"
            matt.pet = tom
            matt.makePetMakeNoise(0)
            
            humans.append(matt)

            // Create another human
            var estella = Human()
            estella.name = "Estella"
            estella.pet = felix
            estella.makePetMakeNoise(0)
            
            humans.append(estella)
        }
        
        setupArrays()
        
        // Print out human array
        for var i = 0; i < humans.count; i++ {
            println("\n")
            //println("human name: \(humans[i].name)")
            //println("pet name: \(humans[i].pet!.petName)")
            //println("pet canMakeNoise: \(humans[i].pet!.canMakeNoise)")
            println("\(humans[i].pet!.petNoise)")
            println("\(humans[i].feedPet())")
        }
        println("\n")
        println("The total number of humans is: \(humans.count)")
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

