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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getAccounts()
    }
    
//    override func viewWillAppear(animated: Bool) {
//        getAccounts()
//    }
    
    func getAccounts() {
        accountResource.loadAsynchronous(AccountsModel.self) { x in
            print("Value \(x)")
        }
    }
}

