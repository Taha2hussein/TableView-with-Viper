//
//  userWorkers.swift
//  TableView in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import Foundation


class userWorker{
     
     func getUsers(completionHandler: @escaping (User) -> ()) {
        var request = URLRequest(url: URL(string:constant.baseUrl + constant.url)!)
          request.httpMethod = "GET"
          _  = URLSession.shared.dataTask(with: request) { data, response, error in
              guard let data = data else { return }
              do {
                  
                  let decoder = JSONDecoder()
                  let driverStaticsInstance = try decoder.decode(User.self, from: data)
                  completionHandler(driverStaticsInstance)
                
              } catch _ {
                  print("false")
//                completionHandler(user)
              }
          }.resume()
        }
    }
        
    

 
