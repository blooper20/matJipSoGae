//
//  MyTableViewCell.swift
//  MatJipSoGae
//
//  Created by MacBook Air on 2022/01/18.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLbl: UILabel! // 매장이름 라벨 연결
    @IBOutlet weak var categoryLbl: UILabel! // 음식 종류 라벨 연결
    @IBOutlet weak var restImg: UIImageView! // 매장 사진 이미지 연결
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
