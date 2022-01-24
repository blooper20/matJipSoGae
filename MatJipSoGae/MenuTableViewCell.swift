//
//  MenuTableViewCell.swift
//  MatJipSoGae
//
//  Created by MacBook Air on 2022/01/22.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var priceLbl: UILabel! // 메뉴 가격표시할 라벨 연결
    @IBOutlet weak var menuLbl: UILabel! // 메뉴 이름 라벨 연결
    @IBOutlet weak var menuImg: UIImageView! // 메뉴 이미지 연결
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
