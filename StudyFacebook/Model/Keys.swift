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
    var contentAccessory: UITableViewCell.AccessoryType
    
    init(imageName: String, title: String, color: UIColor, accessory: UITableViewCell.AccessoryType){
        self.contentTitle = title
        self.contentTitleColor = color
//        self.contentSubTitle = subTitle

        self.contentImageName = imageName
        self.contentImage = UIImage(named: imageName) ?? UIImage()
        
        self.contentAccessory = accessory
    }
    
}

public struct CellInformations {
    
    let menuCellInformation: [Keys] = [
        Keys(imageName: "fb_friends", title: "friends", color: .black, accessory: .disclosureIndicator),
        Keys(imageName: "fb_events", title: "Events", color: .black, accessory: .disclosureIndicator),
        Keys(imageName: "fb_groups", title: "Groups", color: .black, accessory: .disclosureIndicator),
        Keys(imageName: "fb_education", title: "CNU", color: .black, accessory: .disclosureIndicator),
        Keys(imageName: "fb_town_hall", title: "Town Hall", color: .black, accessory: .disclosureIndicator),
        Keys(imageName: "fb_games", title: "Instant Games",color: .black, accessory: .disclosureIndicator),
        Keys(imageName: "", title: "See More...", color: FacebookSpecs.Colors().facebookColor, accessory: .none)
    ]
    
    let favoritesCellInformation: [Keys] = [
        Keys(imageName: "", title: "muck bang", color: .black, accessory: .disclosureIndicator),
        Keys(imageName: "", title: "k-pop", color: .black, accessory: .disclosureIndicator),
        Keys(imageName: "", title: "Add Favorites...", color: FacebookSpecs.Colors().facebookColor, accessory: .none)
    ]
    
    let supportCellInformation: [Keys] = [
        Keys(imageName: "fb_settings", title: "Settings", color: .black, accessory: .disclosureIndicator),
        Keys(imageName: "fb_privacy_shortcuts", title: "Privarcy Shortcuts", color: .black, accessory: .disclosureIndicator),
        Keys(imageName: "fb_help_and_support", title: "Help and Supprot", color: .black, accessory: .disclosureIndicator)
    ]
    
    let logOutCellInformation: Keys = Keys(imageName: "", title: "Log Out", color: .red, accessory: .none)
    
}

public struct sectionInformations {
    
    let numbersOfRowInSection: [Int] = [
        1,
        CellInformations().menuCellInformation.count,
        CellInformations().favoritesCellInformation.count,
        CellInformations().supportCellInformation.count,
        1
    ]
    
    let titleOfSections: [String] = [
        " ",
        " ",
        "FAVORITES",
        " ",
        " "
    ]
    
    let sizeOfSections: [CGFloat] = [
        30.0,
        30.0,
        60.0,
        30.0,
        30.0
    ]
    
    let sizeOfRows: [CGFloat] = [
        90.0,
        50.0,
        50.0,
        50.0,
        50.0
    ]
}

public enum CellIdentifier {
    static let profileCellIdentifier = "profileCell"
    static let contentCellIdentifier = "contentCell"
    static let logOutCellIdentifier = "logOutCell"
}
