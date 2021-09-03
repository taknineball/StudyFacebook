//
//  ContentTableViewCell.swift
//  StudyFacebook
//
//  Created by 탁제원 on 2021/08/12.
//

import UIKit

class ContentTableViewCell: UITableViewCell {
    
    let contentImage: UIImageView = UIImageView()
    let contentLabel: UILabel = UILabel()
    
    private func cellSettings() {
        addSubview(contentImage)
        addSubview(contentLabel)
    }
    
    private func cellConfigure() {
        contentImage.translatesAutoresizingMaskIntoConstraints = false
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            contentImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            contentLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            contentLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60)
        ])
    }
    
    public func setMenuContentCell(with info: CellInformations, indexPath: Int, cellName: ContentTableViewCell) {
        contentImage.image = info.menuCellInformation[indexPath].contentImage
        contentLabel.text = info.menuCellInformation[indexPath].contentTitle
        contentLabel.textColor = info.menuCellInformation[indexPath].contentTitleColor
        cellName.accessoryType = info.menuCellInformation[indexPath].contentAccessory
        
        cellSettings()
        cellConfigure()
    }
    
    public func setFavoritesContentCell(with info: CellInformations, indexPath: Int, cellName: ContentTableViewCell) {
        contentImage.image = info.favoritesCellInformation[indexPath].contentImage
        contentLabel.text = info.favoritesCellInformation[indexPath].contentTitle
        contentLabel.textColor = info.favoritesCellInformation[indexPath].contentTitleColor
        cellName.accessoryType = info.favoritesCellInformation[indexPath].contentAccessory
        
        cellSettings()
        cellConfigure()
    }
    
    public func setSupportContentCell(with info: CellInformations, indexPath: Int, cellName: ContentTableViewCell) {
        contentImage.image = info.supportCellInformation[indexPath].contentImage
        contentLabel.text = info.supportCellInformation[indexPath].contentTitle
        contentLabel.textColor = info.supportCellInformation[indexPath].contentTitleColor
        cellName.accessoryType = info.supportCellInformation[indexPath].contentAccessory
        
        cellSettings()
        cellConfigure()
    }

}
