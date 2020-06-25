//
//  HomeInteractor.swift
//  TableView in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit

protocol  userCases:class {
    
    func getUser() -> ()
    
 }

class userInteractor{
     var presenter : userPresentation?
}

extension userInteractor:userCases{
    func getUser() -> () {
        
        
        let userWorkerInstance = userWorker()
        userWorkerInstance.getUsers {[weak self] (Result) in
               
            guard let _ = self else{return}
            print("result",Result)
            if Result.friends.count > 0{
//                self?.userInstance.append(Result)
                
                self?.presenter?.getData(user: Result)
            }
            
        }
    }
}

