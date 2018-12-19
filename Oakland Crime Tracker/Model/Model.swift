//
//  Model.swift
//  Oakland Crime Tracker
//
//  Created by user on 12/19/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit



typealias Oakland = [OaklandElement]

struct OaklandElement: Codable {
    let computedRegionW23WJfhw: String?
    let address, casenumber: String
    let city: City
    let crimetype: Crimetype
    let datetime, description: String
    let location1: Location1?
    let location1_Address: String
    let location1_City: City
    let location1_State: State
    let policebeat: String?
    let state: State
    
    enum CodingKeys: String, CodingKey {
        case computedRegionW23WJfhw = "computedRegionW23WJfhw"
        case address = "address"
        case casenumber = "casenumber"
        case city = "city"
        case crimetype = "crimetype"
        case datetime = "datetime"
        case description = "description"
        case location1 = "location1"
        case location1_Address = "location1_Address"
        case location1_City = "location1_City"
        case location1_State = "location1_State"
        case policebeat = "policebeat"
        case state = "state"
    }
}

struct City: Codable {
    
    let oakland: String
    
    enum CodingKeys: String, CodingKey {
        case oakland = "oakland"
    }
}

struct Crimetype: Codable {
    let arson: String
    let assault: String
    let burglary: String
    let disturbingThePeace: String
    let drugsAlcoholViolations: String
    let dui: String
    let fraud: String
    let homicide: String
    let motorVehicleTheft: String
    let robbery: String
    let sexCrimes: String
    let theftLarceny: String
    let vandalism: String
    let weapons: String
    
    enum CodingKeys: String, CodingKey {
        case arson = "arson"
        case assault = "assault"
        case burglary = "burglary"
        case disturbingThePeace = "disturbingThePeace"
        case drugsAlcoholViolations = "drugsAlcoholViolations"
        case dui = "dui"
        case fraud = "fraud"
        case homicide = "homicide"
        case motorVehicleTheft = "motorVehicleTheft"
        case robbery = "robbery"
        case sexCrimes = "sexCrimes"
        case theftLarceny = "theftLarceny"
        case vandalism = "vandalism"
        case weapons = "weapons"
    }
}

struct Location1: Codable {
    let type: TypeEnum
    let coordinates: [Double]
    
    enum CodingKeys: CodingKey {
        case type
        case coordinates
    }
}

struct TypeEnum: Codable {
    let point: String
}

struct State: Codable {
    let ca: String
    
    enum CodingKeys: String, CodingKey {
        case ca = "ca"
    }
}

