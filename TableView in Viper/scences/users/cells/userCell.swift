//
//  userCell.swift
//  TableView in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit


protocol configureCell {
    func configureCell(model:User,indexPath:IndexPath) -> Void
}
class userCell: UITableViewCell {

    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userNAme: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension userCell:configureCell{
    func configureCell(model: User, indexPath: IndexPath) {
        self.userNAme.text = model.friends[indexPath.row].name
        self.userEmail.text = model.friends[indexPath.row].email
    }
    
    
}
