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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getAccounts()
    }
    
    func getAccounts() {
        let accountResource: Resource<AccountsModel> = Resource(pathComponent: "\(APIConstants.APIEndPoint()!+APIConstants.APIPathAccounts()!)")
        
        accountResource.loadAsynchronous(AccountsModel.self) { x in
            print("Value \(x)")
        }
    }
}

