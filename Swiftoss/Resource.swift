//
//  Resource.swift
//  Swiftoss
//
//  Created by Rohan Yelsangikar on 2/14/16.
//  Copyright © 2016 Royels. All rights reserved.
//

import Foundation

class Resource {
    
    var options = Dictionary<String, String>()
    
    init(options: Dictionary<String, String>) {
        self.options = options
    }
    
    func areas() {
        return Area(self)
    }
    
    func addresses() {
        return Address(self)
    }
    
    func bank_accounts()
    {
        return BankAccount(self)
    }
    
    func checks() {
        return Check(self)
    }
    
    func countries() {
        return Country(self)
    }
    
    func jobs() {
        return Job(self)
    }
    
    func letters() {
        return Letter(self)
    }
    
    func objects() {
        return Object(self)
    }
    
    func postcards() {
        return Postcard(self)

    }
    
    func routes() {
        return Route(self)
    }
    
    func settings() {
        return Setting(self)
    }
    
    func states() {
        return State(self)
    }
    
    func baseUrl() {
        let toReturn = 
    }
}