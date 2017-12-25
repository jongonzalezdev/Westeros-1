//
//  Character.swift
//  Westeros
//
//  Created by Alexandre Freire on 25/12/2017.
//  Copyright © 2017 Westeros. All rights reserved.
//

import Foundation

final class Person {
    let name: String
    let house: House
    private let _alias: String?
    
    var alias: String {
        return _alias ?? ""
    } 
    
    init(name: String, alias: String? = nil, house: House) {
        self.name = name
        _alias = alias
        self.house = house
    }
}

extension Person {
    var fullName: String {
        return "\(name) \(house.name)"
    }
}

extension Person {
    var proxy: String {
        return "\(name) \(alias) \(house.name)"
    }
    
}

extension Person: Hashable {
    var hashValue: Int {
        return proxy.hashValue
    }
}

extension Person: Equatable {
    static func ==(lhs: Person, rhs: Person) -> Bool {
        return lhs.proxy == rhs.proxy
    }
    
    
}
