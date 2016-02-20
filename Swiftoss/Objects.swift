//
//  Objects.swift
//  Swiftoss
//
//  Created by Rohan Yelsangikar on 2/15/16.
//  Copyright © 2016 Royels. All rights reserved.
//



import Foundation


class Address: Resource {
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
        super.init(options: resource.options)
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
    
    private func address_url(address_id: String = "") -> String {
        return ""
    }
    
    private func address_verify_url() -> String {
        return ""
    }
    
    
    
    
}




class Area {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
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

