//
//  ProfileTableViewCell.swift
//  StudyFacebook
//
//  Created by 탁제원 on 2021/08/12.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    
    let profileCellIdentifier: String = "profileCell"
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userDescription: UILabel!
    
    public func setProfileCellData(with user: UserInformation) {
        userImage.image = user.profileImage
        userName.text = user.name
        userDescription.text = user.userInformation
    }
    

}
