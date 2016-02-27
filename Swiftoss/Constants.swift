//
//  File.swift
//  Swiftoss
//
//  Created by Rohan Yelsangikar on 2/18/16.
//  Copyright © 2016 Royels. All rights reserved.
//

import Foundation


struct Constants {
    struct HTTP {
        static var POST = "post"
        static var GET  = "get"
        static var DELETE = "delete"
    }

    struct Objects {
        static var ADDRESS_ENDPT = "addresses"
        static var AREA_ENDPT = "areas"
        static var VERIFY_ADDRESS_ENDPT = "verify"
        static var BANKACCNT_ENDPT = "bank_accounts"
        static var CHECK_ENDPT = "checks"
        static var JOB_ENDPT = "jobs"
        static var COUNTRY_ENDPT = "countries"
        static var POSTCARD_ENDPT = "postcards"
        static var LETTER_ENDPT = "letters"
        static var ROUTE_ENDPT = "routes"
        static var OBJECT_ENDPT = "objects"
        static var STATE_ENDPT = "states"
        static var SETTING_ENDPT = "settings"
    }
    
    struct Options {
        static var API_HOST = "api.lob.com"
        static var PROTOCOL = "https"
    }

    

}