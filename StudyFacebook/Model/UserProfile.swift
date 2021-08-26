//
//  UserProfile.swift
//  StudyFacebook
//
//  Created by 탁제원 on 2021/08/23.
//

import UIKit

public class UserInformation {
    
    let name: String
    let profileImageName: String
    let profileImage: UIImage
    let userInformation: String
    
    init(userName: String, imageName: String, introduction: String) {
        self.name = userName
        self.userInformation = introduction
        
        self.profileImageName = imageName
        self.profileImage = UIImage(named: imageName) ?? UIImage()
    }
    
}

