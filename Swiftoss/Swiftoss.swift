//
//  Swiftoss.swift
//  Swiftoss
//
//  Created by Rohan Yelsangikar on 2/14/16.
//  Copyright © 2016 Royels. All rights reserved.
//

import Foundation
import Alamofire

class Swiftoss {
    
    static var API_HOST:String {
        return Constants.Options.API_HOST
    }
    static var PROTOCOL:String {
        return Constants.Options.PROTOCOL
    }
    static var API_KEY:String {
        return ""
    }
    // Need to specify the module from which to do the lookup.
    // Ty based stack overflow
    static func send(method: Alamofire.Method, url: String, parameters: Dictionary<String, AnyObject>) -> Any {
        var toReturn: AnyObject?
        Alamofire.request(method, url, parameters: parameters)
            .responseJSON { response in toReturn = response.result.value! }
        toReturn = (toReturn == nil) ? "" : toReturn
        return toReturn
    }
    
    static func crafted(var options: Dictionary<String, Any>) -> Resource {
        options["apiHost"] = (options["apiHost"] == nil) ? Swiftoss.API_HOST : options["apiHost"]
        options["protocol"] = (options["protocol"] == nil) ? Swiftoss.PROTOCOL : options["protocol"]
        options["apiKey"] = (options["apiKey"] == nil) ? Swiftoss.API_KEY : options["apiKey"]
        return Resource(options: options)
    }

    
}