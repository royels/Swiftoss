//
//  Objects.swift
//  Swiftoss
//
//  Created by Rohan Yelsangikar on 2/15/16.
//  Copyright © 2016 Royels. All rights reserved.
//



import Foundation
import Alamofire
import SwiftyJSON


class Address {
    var resource = Resource(options: [:])
    init(resource: Resource) {
       self.resource = resource
    }
    
    func verify(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.POST, url: addressVerifyURL(), parameters: options)
    }
    
    func list(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.GET, url: addressURL(), parameters: options)
    }
    
    func find(addressId: String) -> JSON {
        return Swiftoss.send(.GET, url: addressURL(addressId), parameters: ["":""])
    }
    
    func create(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.POST, url: addressURL(), parameters: options)
    }
    
    func destroy(addressId: String) -> JSON {
        return Swiftoss.send(.DELETE, url: addressURL(), parameters: ["":""])
    }
    
    private func addressURL(addressId: String = "") -> String {
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
    
    func list(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.GET, url: areaURL(), parameters: options)
    }
    
    func find(areaId: String) -> JSON {
        return Swiftoss.send(.GET, url: areaURL(areaId), parameters: ["":""])
    }
    
    func create(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.POST, url: areaURL(), parameters: options)
    }

    private func areaURL(areaId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.AREA_ENDPT, resourceID: areaId)
    }

}

class BankAccount {
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    func verify(bankAccountId: String, options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.POST, url: bankAccountURL(bankAccountId) + "/verify", parameters: options)
    }
    
    func list(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.GET, url: bankAccountURL(), parameters: options)
    }
    
    func find(bankAccountId: String) -> JSON {
        return Swiftoss.send(.GET, url: bankAccountURL(bankAccountId),parameters: ["":""])
    }
    
    func create(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.POST, url: bankAccountURL(), parameters: options)
    }
    
    func destroy(bankAccountId: String) -> JSON {
        return Swiftoss.send(.DELETE, url: bankAccountURL(bankAccountId), parameters: ["":""])
    }
    
    private func bankAccountURL(bankAccountId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.BANKACCNT_ENDPT, resourceID: bankAccountId)
    }
    
}

class Job {
    
    var resource = Resource(options: [:])
    init(resource: Resource) {
        self.resource = resource
    }
    
    func list(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.GET, url: jobUrl(), parameters: options)
    }
    
    func find(jobId: String) -> JSON {
        return Swiftoss.send(.GET, url: jobUrl(jobId))
    }
    
    func create(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.GET, url: jobUrl(), parameters: options)
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
    
    func list(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.GET, url: checkUrl())
    }
    
    func find(checkId: String) -> JSON {
        return Swiftoss.send(.GET, url: checkUrl(checkId))
    }
    
    func create(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.POST, url: checkUrl(), parameters: options)
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
    
    
    func list(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        
        return Swiftoss.send(.GET, url: letterUrl(), parameters: options)

    }
    
    func find(letterId: String) -> JSON {
        return Swiftoss.send(.GET, url: letterUrl(letterId))
    }
    
    func create(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.POST, url: letterUrl(), parameters: options)
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
    
    
    func list(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        
        return Swiftoss.send(.GET, url: countryUrl(), parameters: options)
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
    
    
    func list(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        
        return Swiftoss.send(.GET, url: objectUrl(), parameters: options)
    }
    
    func find(objectId: String) -> JSON {
        return Swiftoss.send(.GET, url: objectUrl(objectId))
    }
    
    func create(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.POST, url: objectUrl(), parameters: options)
    }
    
    func destroy(objectId: String) -> JSON {
        
        return Swiftoss.send(.DELETE, url: objectUrl(objectId))
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
    
    func list(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.GET, url: postcardUrl(), parameters: options)
    }
    
    func find(postcardId: String) -> JSON {
        return Swiftoss.send(.GET, url: postcardUrl(postcardId))
    }
    
    func create(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.POST, url: postcardUrl(), parameters: options)
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
    
    
    func list(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.GET, url: routeUrl(), parameters: options)
    }
    
    func find(routeId: String) -> JSON {
        return Swiftoss.send(.GET, url: routeUrl(routeId))
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
    
    func list(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.GET, url: stateUrl(), parameters: options)
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
    

    func list(options: Dictionary<String, AnyObject> = ["":""]) -> JSON {
        return Swiftoss.send(.GET, url: settingUrl(), parameters: options)
    }
    
    func find(settingId: String) -> JSON {
        return Swiftoss.send(.GET, url: settingUrl())
    }
    
    private func settingUrl(settingId: String = "") -> String {
        return self.resource.constructUrl(Constants.Objects.SETTING_ENDPT, resourceID: settingId)
    }

    
}

