//
//  DetailViewController.swift
//  GroupPrimerProject
//
//  Created by James Phillips on 6/14/21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    fileprivate let contentViewInHC = UIHostingController(rootView: CView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpHC()
        setUpConstraints()
    }
    
    func setUpHC()  {
        addChild(contentViewInHC)
        view.addSubview(contentViewInHC.view)
        contentViewInHC.didMove(toParent: self)
    }
    
    func setUpConstraints()  {
        contentViewInHC.view.translatesAutoresizingMaskIntoConstraints = false
        contentViewInHC.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentViewInHC.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        contentViewInHC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        contentViewInHC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
}
