//
//  AccountsModel.swift
//  BancSabadellAPIKit
//
//  Created by Alberto Moral on 30/4/16.
//  Copyright © 2016 Alberto Moral. All rights reserved.
//

import Foundation
import ObjectMapper

public class AccountsModel: Mappable {
    var data: [AccountModel]?
    
    required public init?(_ map: Map) {}
    
    //  Mappable
    public func mapping(map: Map) {
        data <- map["data"]
    }
}
