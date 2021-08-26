//
//  ContentTableViewCell.swift
//  StudyFacebook
//
//  Created by 탁제원 on 2021/08/12.
//

import UIKit

class ContentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
    
    public func setMenuContentCell(with info: CellInformations, indexPath: Int) {
        contentImage.image = info.menuCellInformation[indexPath].contentImage
        contentLabel.text = info.menuCellInformation[indexPath].contentTitle
        contentLabel.textColor = info.menuCellInformation[indexPath].contentTitleColor
    }
    
    public func setFavoritesContentCell(with info: CellInformations, indexPath: Int) {
        contentImage.image = info.favoritesCellInformation[indexPath].contentImage
        contentLabel.text = info.favoritesCellInformation[indexPath].contentTitle
        contentLabel.textColor = info.favoritesCellInformation[indexPath].contentTitleColor
    }
    
    public func setSupportContentCell(with info: CellInformations, indexPath: Int) {
        contentImage.image = info.supportCellInformation[indexPath].contentImage
        contentLabel.text = info.supportCellInformation[indexPath].contentTitle
        contentLabel.textColor = info.supportCellInformation[indexPath].contentTitleColor
    }

}
