//
//  Resource.swift
//  Swiftoss
//
//  Created by Rohan Yelsangikar on 2/14/16.
//  Copyright © 2016 Royels. All rights reserved.
//

import Foundation

class Resource {
    var options = Dictionary<String, Any>()
    
    init(options: Dictionary<String, Any>) {
        self.options = options
    }

    func baseUrl() -> String {
        let toReturn = "\(self.options["protocol"])://\(self.options["apiKey"]):\(self.options["apiURL"])"
        return toReturn

    }
    
    func constructUrl(resourceType: String, resourceID: String = "") -> String {
        var toReturn = "\(baseUrl())/\(resourceType)/"
        if resourceID != "" {
            toReturn += resourceID
        }
        return toReturn
        
        
    }
    
}

class Factory {
    var options = Dictionary<String, Any>();
    
    init(options: Dictionary<String, Any>) {
        self.options = options
    }
    
    func areas() -> Area {
        return Area(self.options)
    }
    
    func addresses() -> Address{
        return Address(options: options)
    }
    
    func bank_accounts() -> BankAccount
    {
        return BankAccount(options: options)
    }
    
    func checks() -> Check{
        return Check(options: options)
    }
    
    func countries() -> Country {
        return Country(options: options)
    }
    
    func jobs() -> Job {
        return Job(options: options)
    }
    
    func letters() -> Letter {
        return Letter(options: options)
    }
    
    func objects() -> Object{
        return Object(options: options)
    }
    
    func postcards() -> Postcard {
        return Postcard(options: options)
        
    }
    
    func routes() -> Route {
        return Route(options: options)
    }
    
    func settings() -> Setting {
        return Setting(options: options)
    }
    
    func states() -> State {
        return State(options: options)
    }
    
}

