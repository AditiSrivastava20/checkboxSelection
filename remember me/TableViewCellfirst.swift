//
//  TableViewCellfirst.swift
//  remember me
//
//  Created by Sierra 4 on 04/04/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class TableViewCellfirst: UITableViewCell {
var flag = 0
    @IBOutlet weak var checkbox: UIButton!
    @IBOutlet weak var lblinfo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func checkboxaction(_ sender: Any) {
        if flag == 0
        {
        checkbox.setImage(#imageLiteral(resourceName: "9014-200"), for: .normal)
            flag = 1
    }
        else
        {
            checkbox.setImage(#imageLiteral(resourceName: "checkbox"), for: .normal)
            flag = 0
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
