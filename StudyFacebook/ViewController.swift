//
//  ViewController.swift
//  StudyFacebook
//
//  Created by 탁제원 on 2021/08/09.
//

import UIKit

final class ViewController: UIViewController{
    
    // MARK:- Properties
    @IBOutlet weak var tableView: UITableView!
    
    let contentCellIdentifier: String = "contentCell"
    let profileCellIdentifier: String = "profileCell"
    let logOutCellIdentifier: String = "logOutCell"
    let moreInformationCellIdentifier: String = "moreInformationCell"
    let facebookColor: UIColor = UIColor(red: (66/255.0), green: (103/255.0), blue: (178/255.0), alpha: 1.0)
    
    let profile: [String] = ["profile"]
    let menuList: [String] = ["Friends", "Events", "Groups", "CNU", "Town Hall", "Instant Games", "See More..."]
    let menuImages: [String] = ["fb_friends", "fb_events", "fb_groups", "fb_education", "fb_town_hall", "fb_games", ""]
    let favoritesList: [String] = ["muck bang", "k-pop", "Add Favorites..."]
    let supportList: [String] = ["Settings", "Privarcy Shortcuts", "Help and Supprot"]
    let supportImages: [String] = ["fb_settings", "fb_privacy_shortcuts", "fb_help_and_support"]

    // MARK:- View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK:- TableView methods
    // MARK: sections methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let numberOfRows: [Int] = [profile.count, menuList.count, favoritesList.count, supportList.count, 1]
        
        return numberOfRows[section]
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 2 ? "FAVORITES" : " "
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 2 ? 60.0 : 30.0
    }
    
    // MARK: Cell methods
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let contentCell: ContentTableViewCell = tableView.dequeueReusableCell(withIdentifier: self.contentCellIdentifier) as? ContentTableViewCell else {
            return UITableViewCell()
        }
        
        guard let profileCell: ProfileTableViewCell = tableView.dequeueReusableCell(withIdentifier: self.profileCellIdentifier) as? ProfileTableViewCell else {
            return UITableViewCell()
        }
        
        guard let logOutCell: LogOutTableViewCell = tableView.dequeueReusableCell(withIdentifier: self.logOutCellIdentifier) as? LogOutTableViewCell else {
            return UITableViewCell()
        }

        
        switch indexPath.section{
        case 0:
            let bayMaxImage: UIImage! = UIImage(named: "bayMax")
            profileCell.profileImage.image = bayMaxImage
            profileCell.nameLabel?.text = "탁제원"
            profileCell.introduceLable?.text = "IOS 개발자 탁제원입니다."
            return profileCell
        case 1:
            if indexPath.row == menuList.count - 1 {
                contentCell.contentLabel?.text = menuList[indexPath.row]
                contentCell.contentLabel.textColor = facebookColor
                contentCell.accessoryType = .none
            } else {
                contentCell.contentImage.image = UIImage(named: menuImages[indexPath.row])
                contentCell.contentLabel?.text = menuList[indexPath.row]
            }
            return contentCell
        case 2:
            if indexPath.row == favoritesList.count - 1 {
                contentCell.contentLabel?.text = favoritesList[indexPath.row]
                contentCell.contentLabel.textColor = facebookColor
                contentCell.accessoryType = .none
            } else {
                contentCell.contentLabel?.text = favoritesList[indexPath.row]
            }
            return contentCell
        case 3:
                contentCell.contentImage.image = UIImage(named: supportImages[indexPath.row])
                contentCell.contentLabel?.text = supportList[indexPath.row]
                return contentCell
        case 4:
            return logOutCell
        default:
            contentCell.contentLabel?.text = "default"
            return contentCell
        }
        
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return indexPath.section == 0 ? 90.0 : 50.0
//    }
    
}

