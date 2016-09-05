//
//  CardsModel.swift
//  Pods
//
//  Created by Alberto Moral on 5/9/16.
//
//

import Foundation
import ObjectMapper

public class CreditCardModel: Mappable {
    var balance: String?
    var description: String?
    var product: String?
    var iban: String?
    var codifiedProductNumber: String?
    var productNumber: String?
    var user: String?
    
    required public init?(_ map: Map) {}
    
    //  Mappable
    public func mapping(map: Map) {
        description <- map["descripcion"]
        balance <- map["balance"]
        iban <- map["iban"]
        codifiedProductNumber <- map["numeroProductoCodificado"]
        productNumber <- map["numeroProducto"]
        product <- map["producto"]
        user <- map["usuario"]
        
    }
}
