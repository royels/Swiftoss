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
    
    func areas() -> Area {
        return Area(resource: self)
    }
    
    func addresses() -> Address{
        return Address(resource: self)
    }
    
    func bank_accounts() -> BankAccount
    {
        return BankAccount(resource: self)
    }
    
    func checks() -> Check{
        return Check(resource: self)
    }
    
    func countries() -> Country {
        return Country(resource: self)
    }
    
    func jobs() -> Job {
        return Job(resource: self)
    }
    
    func letters() -> Letter {
        return Letter(resource: self)
    }
    
    func objects() -> Object{
        return Object(resource: self)
    }
    
    func postcards() -> Postcard {
        return Postcard(resource: self)

    }
    
    func routes() -> Route {
        return Route(resource: self)
    }
    
    func settings() -> Setting {
        return Setting(resource: self)
    }
    
    func states() -> State {
        return State(resource: self)
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