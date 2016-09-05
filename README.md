# BancSabadellAPIKit

[![CI Status](http://img.shields.io/travis/Alberto Moral/BancSabadellAPIKit.svg?style=flat)](https://travis-ci.org/MoralAlberto/BancSabadellAPIKit)
[![Version](https://img.shields.io/cocoapods/v/BancSabadellAPIKit.svg?style=flat)](http://cocoapods.org/pods/BancSabadellAPIKit)
[![License](https://img.shields.io/cocoapods/l/BancSabadellAPIKit.svg?style=flat)](http://cocoapods.org/pods/BancSabadellAPIKit)
[![Platform](https://img.shields.io/cocoapods/p/BancSabadellAPIKit.svg?style=flat)](http://cocoapods.org/pods/BancSabadellAPIKit)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Intro
The main concepts to interact with the BancSabadell API. It uses OAUTH 2.0 to get a valid token, and two simple API to get the user's account and credit cards.
To prove the demo code, you need to provide a valid client identifier and client secret. Also, you must have a test user to log in.

Example:

```swift
var accountResource: Resource<AccountsModel> = Resource(pathComponent: "\(APIConstants.APIEndPoint()!+APIConstants.APIPathAccounts()!)")

func getAccounts() {
    accountResource.loadAsynchronous(AccountsModel.self) { accounts in
        print("Value \(accounts)")
    }
}
```

## Installation

BancSabadellAPIKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "BancSabadellAPIKit"
```

## Author

Alberto Moral, alberto.moral.g@gmail.com

## License

BancSabadellAPIKit is available under the MIT license. See the LICENSE file for more info.
