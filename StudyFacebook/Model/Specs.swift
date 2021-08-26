//
//  Specs.swift
//  StudyFacebook
//
//  Created by 탁제원 on 2021/08/23.
//

import UIKit

public struct FacebookSpecs {
    
    struct Colors{
        let facebookColor: UIColor
        let red: UIColor = UIColor.red
        let black: UIColor = UIColor.black
        
        init(){
            self.facebookColor = UIColor(red: (66/255.0), green: (103/255.0), blue: (178/255.0), alpha: 1.0)
//            self.red = colorName
//            self.black = colorName
        }
    }
    
    
    struct ImageName {
        let friends: String = "fb_friends"
        let events: String = "fb_events"
        let groups: String = "fb_groups"
        let education: String = "fb_education"
        let townHall: String = "fb_town_hall"
        let games: String = "fb_games"
        let settings: String = "fb_settings"
        let privacy: String = "fb_privacy_shortcuts"
        let helpAndSupport: String = "fb_help_and_support"
    }
}
