//
//  ViewController.swift
//  TableView in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit


protocol userView :class{
    func showLoader() -> Void
    func hideLoader() -> Void
    func reloadTable() -> Void
}


class ViewController: UIViewController {

    @IBOutlet weak var userTableView:UITableView!
    
    var presenter : userPresentation!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
        
    }


}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  presenter.numerOfCell
       
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)as! userCell
        presenter?.configure(model: cell, indexPath: indexPath)
        return cell
    }
}


extension ViewController : userView{
   
    func reloadTable() {
        DispatchQueue.main.async {
            self.userTableView.reloadData()
        }
      
    }
    
    func showLoader() {
        print("show Loader")
    }
    
    func hideLoader() {
        print("hide Loader")
    }
    
    
}
