//
//  HomeBuilder.swift
//  TableView in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
class userBuilder{
    
    static func Build() -> UIViewController{
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let view = storyBoard.instantiateViewController(identifier: "ViewController")as! ViewController
        
        let router = userRouter(view: view)
        let interactor = userInteractor()
        let presenter = userPresenter(interactor: interactor, router: router, view: view)
        view.presenter = presenter
        interactor.presenter = presenter
        return view
    }
}
