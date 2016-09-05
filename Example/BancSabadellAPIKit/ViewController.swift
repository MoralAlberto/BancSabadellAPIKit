//
//  ViewController.swift
//  BancSabadellAPIKit
//
//  Created by Alberto Moral on 09/03/2016.
//  Copyright (c) 2016 Alberto Moral. All rights reserved.
//

import UIKit
import BancSabadellAPIKit

class ViewController: UIViewController {
    
    var accountResource: Resource<AccountsModel> = Resource(pathComponent: "\(APIConstants.APIEndPoint()!+APIConstants.APIPathAccounts()!)")
    var cardResource: Resource<CreditCardsModel> = Resource(pathComponent: "\(APIConstants.APIEndPoint()!+APIConstants.APIPathCards()!)")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getAccounts()
    }
    
    func getAccounts() {
        accountResource.loadAsynchronous(AccountsModel.self) { accounts in
            print("Value \(accounts)")
        }
    }
    
    func getCreditCards() {
        cardResource.loadAsynchronous(CreditCardsModel.self) { creditCards in
            print("Value \(creditCards)")
        }
    }
}

