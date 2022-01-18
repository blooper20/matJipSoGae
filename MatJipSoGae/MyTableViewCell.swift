//
//  MyTableViewCell.swift
//  MatJipSoGae
//
//  Created by MacBook Air on 2022/01/18.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myLable: UILabel! // Oulet 변수로 myLable 선언
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
