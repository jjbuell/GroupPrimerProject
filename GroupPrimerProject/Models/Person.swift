//
//  Person.swift
//  GroupPrimerProject
//
//  Created by JJB on 6/14/21.
//

import UIKit

class Person {
    var name: String
    var image: UIImage
    var age: Int
    var location: String
    var bio: String
    
    init(name: String, image: UIImage, age: Int, location: String, bio: String) {
        self.name = name
        self.image = image
        self.age = age
        self.location = location
        self.bio = bio
    }
}
