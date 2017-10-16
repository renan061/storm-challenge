//
//  ListViewControllerCell.swift
//  StormChallenge
//
//  Created by Renan Almeida on 15/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

import UIKit

class ListViewControllerCell: UITableViewCell {
    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellDescription: UILabel!
    
    func setup(title: String, description: String) {
        cellTitle.text = title
        cellDescription.text = description
    }
}
