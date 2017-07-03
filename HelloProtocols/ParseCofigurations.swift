//
//  ParseCofigurations.swift
//  HelloProtocols
//
//  Created by rightmeow on 7/3/17.
//  Copyright © 2017 Duckensburg. All rights reserved.
//

import Parse


struct ParseServerConfigurations {
    
    // MARK: - mLab db configs
    
    static var dbUserId: String = "heroku_id"
    static var dbUser: String = "heroku_user"
    static var dbPass: String = "some_pass"
    
    static let dbURL: String = "mongodb://\(dbUser):\(dbPass)@some_url"
    
    // MARK: - server configs
    
    static var heroku_app_name = "heroku_app_name"
    static var heroku_app_id = "heroku_app_id"
    static var heroku_master_key = "heroku_master_key"
    static var heroku_server_url = "https://heroku_server_url/parse"
    
    static let config = ParseClientConfiguration {
        $0.applicationId = heroku_app_id
        $0.server = heroku_server_url
        $0.clientKey = heroku_master_key
    }
    
}
