//
//  Datamanager.swift
//  JSON_AMG
//
//  Created by Adam Garcia on 3/5/19.
//  Copyright © 2019 Adam Garcia. All rights reserved.
//

import UIKit

class Datamanager: NSObject {
    
    func getData() {
        let urlString = "https://api.myjson.com/bins/ag4ha"
            
            let actualUrl = URL(string: urlString)
            
            let session = URLSession.shared
    
        let task = session.dataTask(with: actualUrl!) { (data, response, error) in
                
                if error != nil {
                    //Handle the error
                }
        
                if let successfulData = data {
                    print(String(data: successfulData, encoding: String.Encoding.ascii))
            }
        }
        task.resume()
    }
}
