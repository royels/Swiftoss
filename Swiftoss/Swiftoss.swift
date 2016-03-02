//
//  Swiftoss.swift
//  Swiftoss
//
//  Created by Rohan Yelsangikar on 2/14/16.
//  Copyright © 2016 Royels. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
class Swiftoss {
    
    static var API_HOST:String {
        get {
            return Constants.Options.API_HOST
        }
        set {
            Constants.Options.API_HOST = newValue
        }
    }
    static var PROTOCOL:String {
        return Constants.Options.PROTOCOL
    }
    static var API_KEY:String {
        return ""
    }
    // Need to specify the module from which to do the lookup.
    // Ty based stack overflow
    static func send(method: Alamofire.Method, url: String, parameters: Dictionary<String, AnyObject>) -> JSON {
        var toReturn = JSON([:])
        Alamofire.request(method, url, parameters: parameters)
            .responseJSON { response in
                switch(response.result) {
                case .Success(let data):
                    toReturn = JSON(data)
                case .Failure(let error):
                    print("Request failed with error: \(error)")
                }
        }
        return toReturn
    }
    
    static func crafted(var options: Dictionary<String, Any>) -> Resource {
        options["apiHost"] = (options["apiHost"] == nil) ? Swiftoss.API_HOST : options["apiHost"]
        options["protocol"] = (options["protocol"] == nil) ? Swiftoss.PROTOCOL : options["protocol"]
        options["apiKey"] = (options["apiKey"] == nil) ? Swiftoss.API_KEY : options["apiKey"]
        return Resource(options: options)
    }

    
}