//
//  User.swift
//  ChatCollecthionApp
//
//  Created by minato on 2021/03/10.
//

import Foundation
struct User {
    private(set) public var name : String
    private(set) public var age : String
    private(set) public var imageName : String
    
    init(name: String, age: String, imageName: String) {
        self.name = name
        self.age = age
        self.imageName = imageName
    }
}
