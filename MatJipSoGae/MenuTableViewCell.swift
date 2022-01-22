//
//  MenuTableViewCell.swift
//  MatJipSoGae
//
//  Created by MacBook Air on 2022/01/22.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var menuLbl: UILabel!
    @IBOutlet weak var menuImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
