//
//  Objects.swift
//  Swiftoss
//
//  Created by Rohan Yelsangikar on 2/15/16.
//  Copyright © 2016 Royels. All rights reserved.
//



import Foundation


class Address {
    var resource = Resource(options: [:])
    init(resource: Resource) {
       self.resource = resource
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
    
    private func addressUrl(addressId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.ADDRESS_ENDPT, resourceID: addressId)
    }
    private func addressVerifyURL() -> String {
        return self.resource.constructUrl(Constants.Objects.VERIFY_ADDRESS_ENDPT)
    }
    
}




class Area {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    func list(options: Dictionary<String, Any> = ["":""]) -> Any {
        return 0
    }
    
    func find(areaId: String) -> Any {
        return 0
    }
    
    func create(options: Dictionary<String, Any> = ["":""]) -> Any {
        return 0
    }

    private func areaUrl(areaId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.AREA_ENDPT, resourceID: areaId)
    }

}

class BankAccount {
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    func verify(options: Dictionary<String, Any> = ["":""]) -> Any {
        return 0
    }
    
    func list(options: Dictionary<String, Any> = ["":""]) -> Any {
        
        return 0
    }
    
    func find(bankAccountId: String) -> Any {
        return 0
    }
    
    func create(options: Dictionary<String, Any> = ["":""]) -> Any {
        return 0
    }
    
    func destroy(bankAccountId: String) -> Any {
        
        return 0
    }
    
    func verify(bankAccountId: String, options: Dictionary<String, Any>) -> Any {
        return 0
    }
    
    private func bankAccountUrl(bankAccountId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.BANKACCNT_ENDPT, resourceID: bankAccountId)
    }
    
}

class Job {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    func list(options: Dictionary<String, Any> = ["":""]) -> Any {
        
        return 0
    }
    
    func find(jobId: String) -> Any {
        return 0
    }
    
    func create(options: Dictionary<String, Any> = ["":""]) -> Any {
        return 0
    }

    
    private func jobUrl(jobId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.JOB_ENDPT, resourceID: jobId)
    }
    
}







class Check {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    func list(options: Dictionary<String, Any> = ["":""]) -> Any {
        return 0
    }
    
    func find(checkId: String) -> Any {
        return 0
    }
    
    func create(options: Dictionary<String, Any> = ["":""]) -> Any {
        return 0
    }
    
    private func checkUrl(checkId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.CHECK_ENDPT, resourceID: checkId)
    }
    
    
}





class Letter {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    func list(options: Dictionary<String, Any> = ["":""]) -> Any {
        
        return 0
    }
    
    func find(letterId: String) -> Any {
        return 0
    }
    
    func create(options: Dictionary<String, Any> = ["":""]) -> Any {
        return 0
    }
    
    
    private func letterUrl(letterId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.LETTER_ENDPT, resourceID: letterId)
    }
    
    
    
}







class Country {
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    func list(options: Dictionary<String, Any> = ["":""]) -> Any {
        
        return 0
    }
    
    private func countryUrl(countryId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.COUNTRY_ENDPT, resourceID: countryId)
    }
    
    
}








class Object {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    func list(options: Dictionary<String, Any> = ["":""]) -> Any {
        
        return 0
    }
    
    func find(objectId: String) -> Any {
        return 0
    }
    
    func create(options: Dictionary<String, Any> = ["":""]) -> Any {
        return 0
    }
    
    func destroy(objectId: String) -> Any {
        
        return 0
    }
    
    private func objectUrl(objectId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.OBJECT_ENDPT, resourceID: objectId)
    }
    
}








class Postcard {
    
    var resource = Resource(options: [:])
    init(resource : Resource) {
        self.resource = resource
    }
    
    func list(options: Dictionary<String, Any> = ["":""]) -> Any {
        
        return 0
    }
    
    func find(postcardId: String) -> Any {
        return 0
    }
    
    func create(options: Dictionary<String, Any> = ["":""]) -> Any {
        return 0
    }
    
    
    private func postcardUrl(postcardId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.POSTCARD_ENDPT, resourceID: postcardId)
    }
    
    
}










class Route {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    
    func list(options: Dictionary<String, Any> = ["":""]) -> Any {
        
        return 0
    }
    
    func find(routeId: String) -> Any {
        return 0
    }
    
    
    private func routeUrl(routeId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.ROUTE_ENDPT, resourceID: routeId)
    }
    
}




class State {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    func list(options: Dictionary<String, Any> = ["":""]) -> Any {
        
        return 0
    }
    
    
    private func stateUrl(stateId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.STATE_ENDPT, resourceID: stateId)
    }
    
}


class Setting {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    

    func list(options: Dictionary<String, Any> = ["":""]) -> Any {
        
        return 0
    }
    
    func find(settingId: String) -> Any {
        return 0
    }
    
    
    private func settingUrl(settingId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.SETTING_ENDPT, resourceID: settingId)
    }

    
}

