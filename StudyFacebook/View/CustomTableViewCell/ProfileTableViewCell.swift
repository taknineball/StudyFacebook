//
//  ProfileTableViewCell.swift
//  StudyFacebook
//
//  Created by 탁제원 on 2021/08/12.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    
    let profileCellIdentifier: String = "profileCell"
    
    let userImage: UIImageView = UIImageView()
    let userName: UILabel = UILabel()
    let userDescription: UILabel = UILabel()
    
    public func setProfileCellData(with user: UserInformation) {
        userImage.image = user.profileImage
        userName.text = user.name
        userDescription.text = user.userInformation
        
        cellSettings()
        cellConfigure()
    }
    
    private func cellSettings() {
        addSubview(userImage)
        addSubview(userName)
        addSubview(userDescription)
    }
    
    private func cellConfigure() {
        userImage.translatesAutoresizingMaskIntoConstraints = false
        userName.translatesAutoresizingMaskIntoConstraints = false
        userDescription.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            userImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            userImage.heightAnchor.constraint(equalToConstant: 90),
            userImage.widthAnchor.constraint(equalToConstant: 90),
            
            userName.leadingAnchor.constraint(equalTo: self.userImage.trailingAnchor, constant: 20),
            userName.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            userName.bottomAnchor.constraint(equalTo: self.userDescription.topAnchor, constant: 10),
            userDescription.leadingAnchor.constraint(equalTo: self.userImage.trailingAnchor, constant: 20),
            userDescription.bottomAnchor.constraint(greaterThanOrEqualTo: self.bottomAnchor, constant: 10)
        ])
    }
    

}
