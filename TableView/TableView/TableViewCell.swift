//
//  TableViewCell.swift
//  TableView
//
//  Created by Aluno on 01/12/16.
//  Copyright © 2016 Gustavo Reichelt Emmel. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var lblCidade: UILabel!
    
    @IBOutlet weak var lblUF: UILabel!
    
}
