//
//  User.swift
//  ChatCollecthionApp
//
//  Created by minato on 2021/03/10.
//

import Foundation

class User {
    private(set) public var name : String
    private(set) public var age : String
    private(set) public var imageName : String
    private(set) public var city : String
    private(set) public var comment : String
    
    init(name: String, age: String, imageName: String, city: String, comment: String) {
        self.name = name
        self.age = age
        self.imageName = imageName
        self.city = city
        self.comment = comment
    }
    
   
   
    
}
