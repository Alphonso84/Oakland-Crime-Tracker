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

struct OaklandElement {
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
}

enum City {
    case oakland
}

enum Crimetype {
    case arson
    case assault
    case burglary
    case disturbingThePeace
    case drugsAlcoholViolations
    case dui
    case fraud
    case homicide
    case motorVehicleTheft
    case robbery
    case sexCrimes
    case theftLarceny
    case vandalism
    case weapons
}

struct Location1 {
    let type: TypeEnum
    let coordinates: [Double]
}

enum TypeEnum {
    case point
}

enum State {
    case ca
}

