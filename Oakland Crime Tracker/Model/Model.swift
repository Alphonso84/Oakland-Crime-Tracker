//
//  Model.swift
//  Oakland Crime Tracker
//
//  Created by user on 12/19/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

struct OaklandElement: Codable {
    let crimetype: String?
    let datetime, casenumber, oaklandDescription: String
    let policebeat: String?
    let address: String
    let city: City
    let state: State
    let location1: Location1?
    let location1_Address: String
    let location1_City: City
    let location1_State: State
    let location1_Zip: String

    enum CodingKeys: String, CodingKey {
        case crimetype, datetime, casenumber
        case oaklandDescription = "description"
        case policebeat, address, city, state
        case location1 = "location_1"
        case location1_Address = "location_1_address"
        case location1_City = "location_1_city"
        case location1_State = "location_1_state"
        case location1_Zip = "location_1_zip"
    }
}

enum City: String, Codable {
    case oakland = "Oakland"
}

// MARK: - Location1
struct Location1: Codable {
    let type: TypeEnum
    let coordinates: [Double]
}

enum TypeEnum: String, Codable {
    case point = "Point"
}

enum State: String, Codable {
    case ca = "CA"
}

typealias Oakland = [OaklandElement]
