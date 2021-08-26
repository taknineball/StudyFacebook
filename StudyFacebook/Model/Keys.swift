//
//  Keys.swift
//  StudyFacebook
//
//  Created by 탁제원 on 2021/08/23.
//

import UIKit
import Foundation


public struct Keys {
    
    var contentImageName: String
    var contentImage: UIImage
    var contentTitle: String
    var contentTitleColor: UIColor
    
    init(imageName: String, title: String, color: UIColor){
        self.contentTitle = title
        self.contentTitleColor = color
//        self.contentSubTitle = subTitle

        self.contentImageName = imageName
        self.contentImage = UIImage(named: imageName) ?? UIImage()
    }
    
}

struct CellInformations {
    
    let menuCellInformation: [Keys] = [
        Keys(imageName: "fb_friends", title: "friends", color: .black),
        Keys(imageName: "fb_events", title: "Events", color: .black),
        Keys(imageName: "fb_groups", title: "Groups", color: .black),
        Keys(imageName: "fb_education", title: "CNU", color: .black),
        Keys(imageName: "fb_town_hall", title: "Town Hall", color: .black),
        Keys(imageName: "fb_games", title: "Instant Games",color: .black),
        Keys(imageName: "", title: "See More...", color: FacebookSpecs.Colors().facebookColor)
    ]
    
    let favoritesCellInformation: [Keys] = [
        Keys(imageName: "", title: "muck bang", color: .black),
        Keys(imageName: "", title: "k-pop", color: .black),
        Keys(imageName: "", title: "Add Favorites...", color: FacebookSpecs.Colors().facebookColor)
    ]
    
    let supportCellInformation: [Keys] = [
        Keys(imageName: "fb_settings", title: "Settings", color: .black),
        Keys(imageName: "fb_privacy_shortcuts", title: "Privarcy Shortcuts", color: .black),
        Keys(imageName: "fb_help_and_support", title: "Help and Supprot", color: .black)
    ]

    
}
