//
//  HomePresenter.swift
//  TableView in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit

protocol  userPresentation {
    func viewDidLoad() -> Void
    func getData(user:User) -> Void
    func getError() -> Void
    var numerOfCell : Int{get}
    func configure(model:configureCell,indexPath:IndexPath)
}
class userPresenter{
    
    var router : userRouting
    var interactor : userCases
    weak var view : userView?
    
    private var userInstance = [User]()
    
    
    init(interactor:userCases , router :userRouting , view: userView ) {
        self.router = router
        self.interactor = interactor
        self.view = view
    }
}
extension userPresenter:userPresentation{
    
    func configure(model: configureCell, indexPath: IndexPath) {
        let Data  = userInstance[indexPath.row]
        model.configureCell(model: Data, indexPath: indexPath)
    }
    
    var numerOfCell: Int {
        return userInstance.count
    }
    
    
    func getData(user: User) {
        //
        userInstance.append(user)
        view?.hideLoader()
        view?.reloadTable()
    }
    
    func getError() {
        // handle your error
    }
    
    func viewDidLoad() {
        print("ready to use")
        view?.showLoader()
      interactor.getUser()
       
    }
}

