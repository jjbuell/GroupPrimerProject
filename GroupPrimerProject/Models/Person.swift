//
//  Person.swift
//  GroupPrimerProject
//
//  Created by JJB on 6/14/21.
//

import UIKit
import SwiftUI

class Person {
    var id: UUID
    var name: String
    var photo: UIImage
    var age: Int
    var location: String
    var bio: String
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    
    init(id: UUID = UUID(),name: String, photo: UIImage, age: Int, location: String, bio: String, imageName: String) {
        self.id = id
        self.name = name
        self.photo = photo
        self.age = age
        self.location = location
        self.bio = bio
        self.imageName = imageName
        
    }
}
