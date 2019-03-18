//
//  MainScreen.swift
//  Oakland Crime Tracker
//
//  Created by user on 12/24/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

class MainScreen: UIViewController {
    
    
    override func viewWillAppear(_ animated: Bool) {
         Networking().getOaklandData()
    }
    
    override func viewDidLoad() {
       
//        if CrimeData .isEmpty == false {
//            print("CrimeData has data")
//        }
    }
    
    
    
    
    
}
