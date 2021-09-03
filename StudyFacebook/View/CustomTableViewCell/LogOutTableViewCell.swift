//
//  LogOutTableViewCell.swift
//  StudyFacebook
//
//  Created by 탁제원 on 2021/08/13.
//

import UIKit

class LogOutTableViewCell: UITableViewCell {
    
    let logOutLabel: UILabel = UILabel()

    private func cellSettings() {
        addSubview(logOutLabel)
    }
    
    private func cellConfigure() {
        logOutLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logOutLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            logOutLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    public func setLogOutCell(with info: CellInformations, indexPath: Int, cellName: LogOutTableViewCell) {
        logOutLabel.text = info.logOutCellInformation.contentTitle
        logOutLabel.textColor = info.logOutCellInformation.contentTitleColor
        cellName.accessoryType = info.logOutCellInformation.contentAccessory
        
        cellSettings()
        cellConfigure()
    }

}
