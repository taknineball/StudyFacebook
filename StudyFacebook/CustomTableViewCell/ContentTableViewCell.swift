//
//  ContentTableViewCell.swift
//  StudyFacebook
//
//  Created by 탁제원 on 2021/08/09.
//

import UIKit

class ContentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var functionLabel: UILabel!
    @IBOutlet weak var functionImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
