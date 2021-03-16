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
            
            //parsing the data into video obj
        }
        
        // Kick off the task :)
        dataTask.resume()
        
    }
}
