//
//  PersonController.swift
//  GroupPrimerProject
//
//  Created by JJB on 6/14/21.
//

import UIKit

class PersonController {
    
    static let shared = PersonController()
    
    let people: [Person] = {
        
        let brysonJ = Person(name: "Bryson Jones", image: UIImage(named: "brysonJ")!, age: 31, location: "Alpine, Utah", bio: "Blah Blah Blah")
        
        return [brysonJ]
        
    }()
}//End class
