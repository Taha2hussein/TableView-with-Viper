//
//  users.swift
//  TableView in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
// MARK: - User
struct User: Codable {
    let friends: [Friend]
    
}

// MARK: - Friend
struct Friend: Codable {
    let id, email, name: String
}

