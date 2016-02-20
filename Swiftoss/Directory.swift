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
    var resource = Resource(options: ["":""])
    
    init(options: Dictionary<String, Any>) {
        self.resource = Resource(options: options)
    }
    
    func areas() -> Area {
        return Area(resource: self.resource)
    }
    
    func addresses() -> Address{
        return Address(resource: self.resource)
    }
    
    func bank_accounts() -> BankAccount
    {
        return BankAccount(resource: self.resource)
    }
    
    func checks() -> Check{
        return Check(resource: self.resource)
    }
    
    func countries() -> Country {
        return Country(resource: self.resource)
    }
    
    func jobs() -> Job {
        return Job(resource: self.resource)
    }
    
    func letters() -> Letter {
        return Letter(resource: self.resource)
    }
    
    func objects() -> Object{
        return Object(resource: self.resource)
    }
    
    func postcards() -> Postcard {
        return Postcard(resource: self.resource)
        
    }
    
    func routes() -> Route {
        return Route(resource: self.resource)
    }
    
    func settings() -> Setting {
        return Setting(resource: self.resource)
    }
    
    func states() -> State {
        return State(resource: self.resource)
    }
    
}

