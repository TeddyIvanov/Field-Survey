//
//  Observation.swift
//  Field Survey
//
//  Created by Teodor Ivanov on 11/1/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import Foundation

struct Observation {
    
    let classification: Classification
    let title: String
    let description: String
    let date: Date
    
    init(classification: Classification, title: String, description: String, date: Date) {
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classifcationName: String, title: String, description: String, date: Date) {
        if let classification = Classification(rawValue: classifcationName) {
            self.init(classification: classification, title: title, description: description, date: date)
        } else {
            return nil
        }
    }
}
