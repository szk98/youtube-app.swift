//
//  Model.swift
//  youtube-app
//
//  Created by Szikszai Konrád on 2021. 03. 16..
//

import Foundation

class Model {
    
    func getVideos () {
        
        // Create a URL obj
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get a URLSession obj
        let session = URLSession.shared
        
        // Get a data task from th URLSession obj
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            //Check if there were any errors
            if error != nil || data == nil {
                return
            }
            
            do {
                
                //parsing the data into video obj
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
               dump(response)
            }
            catch {
                
            }
            
            
        }
        
        // Kick off the task :)
        dataTask.resume()
        
    }
}
