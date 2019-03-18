//
//  Networking.swift
//  Oakland Crime Tracker
//
//  Created by user on 12/3/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit


var crimeTitle = [String?]()
var crimeAddress = [String]()
var crimeTime = [String?]()
var policeBeat = [String?]()
class Networking {
    
    
    let token = "?$$app_token=GRa9W8LF2Kx8aUaVfTqDXYFkn"
    let secret = "f_GBV9PorK8wW2hAJpgJuDvIowabD5Q2HpOY"
    let endPoint = "https://data.oaklandnet.com/resource/3xav-7geq.json"
    let sortOrder = "&$order=datetime%20DESC"
    
    
    func getOaklandData(){
        
        
        let urlEndPoint = URL(string: "\(endPoint)\(token)\(sortOrder)")
        let session = URLSession.shared
        let task = session.dataTask(with: (urlEndPoint!)) { (data, response, error) in
            print("Start")
            print(urlEndPoint!)
            guard let unwrappedData = data else {return}
            do {
                
                let jsonDecoder = JSONDecoder()
                let jsonData = try jsonDecoder.decode(Oakland.self, from: unwrappedData)
                crimeTitle = jsonData.map {$0.crimetype}
                crimeAddress = jsonData.map {$0.address}
                crimeTime = jsonData.map {$0.date}
                policeBeat = jsonData.map {$0.policebeat}
                print(jsonData)
                
                
                
            } catch {
                print(error)
            }
        }
        task.resume()
        
    }
}
