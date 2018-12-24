//
//  Networking.swift
//  Oakland Crime Tracker
//
//  Created by user on 12/3/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit


var CrimeData = [OaklandElement]()
var crimeTitle = [String?]()
var crimeAddress = [String?]()
class Networking {
    
    
    let token = "?$$app_token=GRa9W8LF2Kx8aUaVfTqDXYFkn"
    let secret = "f_GBV9PorK8wW2hAJpgJuDvIowabD5Q2HpOY"
    let endPoint = "https://data.oaklandnet.com/resource/3xav-7geq.json"
    
    
    func getOaklandData(){
        let urlEndPoint = URL(string: "\(endPoint)\(token)")
        //URL SESSION
        let session = URLSession.shared
        
        
        let task = session.dataTask(with: (urlEndPoint!)) { (data, response, error) in
            print("Start")
            print(urlEndPoint!)
            guard let unwrappedData = data else {return}
            do {
                
                let jsonDecoder = JSONDecoder()
                let jsonData = try jsonDecoder.decode(Array<OaklandElement>.self, from: unwrappedData)
                CrimeData = jsonData
                crimeTitle = CrimeData.map {$0.crimetype}
                crimeAddress = CrimeData.map {$0.address}
                print(crimeTitle)
                
                
            } catch {
                print(error)
            }
        }
        task.resume()
        
    }
}
