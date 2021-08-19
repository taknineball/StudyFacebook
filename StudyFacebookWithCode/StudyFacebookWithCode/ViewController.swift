//
//  ViewController.swift
//  StudyFacebookWithCode
//
//  Created by 탁제원 on 2021/08/19.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK:- Properties
    var tableView: UITableView!
    
//    let contentCellIdentifier: String = "contentCell"
//    let profileCellIdentifier: String = "profileCell"
//    let logOutCellIdentifier: String = "logOutCell"
//    let moreInformationCellIdentifier: String = "moreInformationCell"
    let facebookColor: UIColor = UIColor(red: (66/255.0), green: (103/255.0), blue: (178/255.0), alpha: 1.0)
    
    let profile: [String] = ["profile"]
    let menuList: [String] = ["Friends", "Events", "Groups", "CNU", "Town Hall", "Instant Games", "See More..."]
    let menuImages: [String] = ["fb_friends", "fb_events", "fb_groups", "fb_education", "fb_town_hall", "fb_games", ""]
    let favoritesList: [String] = ["muck bang", "k-pop", "Add Favorites..."]
    let supportList: [String] = ["Settings", "Privarcy Shortcuts", "Help and Supprot"]
    let supportImages: [String] = ["fb_settings", "fb_privacy_shortcuts", "fb_help_and_support"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let numberOfRows: [Int] = [profile.count, menuList.count, favoritesList.count, supportList.count, 1]
        
        return numberOfRows[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    
}

