//
//  Objects.swift
//  Swiftoss
//
//  Created by Rohan Yelsangikar on 2/15/16.
//  Copyright © 2016 Royels. All rights reserved.
//



import Foundation


class Address: Resource {
    override init(options: Dictionary<String, Any>) {
        super.init(options: options)
    }
    
    func verify(options: Dictionary<String, Any> = ["":""]) -> Any {
        return 0
    }
    
    func list(options: Dictionary<String, Any> = ["":""]) -> Any {
        
        return 0
    }
    
    func find(addressId: String) -> Any {
        return 0
    }
    
    func create(options: Dictionary<String, Any> = ["":""]) -> Any {
        return 0
    }
    
    func destroy(addressId: String) -> Any {
        
        return 0
    }
    
    private func addressUrl(addressId: String = "") {
        super.constructUrl(Constants.ADDRESS_ENDPT, resourceID: addressId)
    }
    private func addressVerifyURL() {
        super.constructUrl(Constants.VERIFY_ADDRESS_ENDPT)
    }
    
}




class Area: Resource {
    
    override init(options: Dictionary<String, Any>) {
        super.init(options: options)
    }
    
    
}

class BankAccount {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    
    
}

class Job {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    
    
}







class Check {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    
    
}





class Letter {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    
    
}







class Country {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    
    
}








class Object {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    
    
}








class Postcard {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    
    
}










class Route {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    
    
    
}




class State {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    
    
    
}


class Setting {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    
    
}

