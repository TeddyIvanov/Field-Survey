//
//  Classification.swift
//  Field Survey
//
//  Created by Teodor Ivanov on 11/1/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import Foundation
import UIKit

enum Classification: String{
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage?{
        return UIImage(named: self.rawValue + "Icon")
    }
}
