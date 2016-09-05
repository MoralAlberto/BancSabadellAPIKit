//
//  CreditCardsModel.swift
//  Pods
//
//  Created by Alberto Moral on 5/9/16.
//
//

import Foundation
import ObjectMapper

public class CreditCardsModel: Mappable {
    var data: [CreditCardModel]?
    
    required public init?(_ map: Map) {}
    
    //  Mappable
    public func mapping(map: Map) {
        data <- map["data"]
    }
}
