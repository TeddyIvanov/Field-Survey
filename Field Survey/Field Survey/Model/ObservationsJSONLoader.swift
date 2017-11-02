//
//  ObservationsJSONLoader.swift
//  Field Survey
//
//  Created by Teodor Ivanov on 11/1/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import Foundation

class ObservationsJSONLoader {
    
    static func load(fileName: String) -> [Observation] {
        var observations = [Observation]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = ObservationsJSONParser.parse(data)
        }
        return observations
    }
}
