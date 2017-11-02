//
//  ObservationsJSONParser.swift
//  Field Survey
//
//  Created by Teodor Ivanov on 11/1/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import Foundation

class ObservationsJSONParser {
    
    static let dateFormatter = DateFormatter()
    static func parse(_ data: Data) -> [Observation] {
        var observations = [Observation]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok"{
            
            if let jsonObservations = root["observations"] as? [Any] {
                for observation in jsonObservations {
                    if let observation = observation as? [String: String] {
                        if let classificationName = observation["classification"],
                            let title = observation["title"],
                            let description = observation["description"],
                            let dateString = observation["date"],
                            let date = dateFormatter.date(from: dateString) {
                            
                            if let observation = Observation(classifcationName: classificationName, title: title, description: description, date: date) {
                                observations.append(observation)
                            }
                        }
                    }
                }
            }
        }
        return observations
    }
    
}
