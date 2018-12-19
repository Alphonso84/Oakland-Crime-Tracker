//
//  Networking.swift
//  Oakland Crime Tracker
//
//  Created by user on 12/3/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

class Networking {
    
    let urlEndPoint = URL(fileURLWithPath: "https://data.oaklandnet.com/resource/3xav-7geq.json" )
    
    func getOaklandData(){
     
        //URL SESSION
        let session = URLSession.shared
        
        
        let task = session.dataTask(with: (urlEndPoint)) { (data, response, error) in
            print("Start")
            print(self.urlEndPoint)
            guard let unwrappedData = data else {return}
            do {
                
                let jsonDecoder = JSONDecoder()
                let jsonData = try jsonDecoder.decode(Array<Oakland>.self, from: unwrappedData)
                
               print(jsonData)
             
                
            } catch {
                print(error)
            }
        }
        task.resume()
        
    }
}
