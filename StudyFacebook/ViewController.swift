//
//  ViewController.swift
//  StudyFacebook
//
//  Created by 탁제원 on 2021/08/09.
//

import UIKit

final class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK:- Properties
    @IBOutlet weak var tableView: UITableView!
    
    let contentCellIdentifier: String = "contentCell"
    let profileCellIdentifier: String = "profileCell"
    
    let profile: [String] = ["profile"]
    let menuList: [String] = ["Friends", "Events", "Groups", "CNU", "Town Hall", "Instant Games"]
    let menuImages: [String] = ["fb_freinds", "fb_events", "fb_groups", "fb_education", "fb_town_hall", "fb_games"]
    let favoritesList: [String] = ["muck bang", "k-pop"]
    let supportList: [String] = ["Settings", "Privarcy Shortcuts", "Help and Supprot"]
    let supportImages: [String] = ["fb_settings", "fb_privacy_shortcuts", "fb_help_and_support"]

    // MARK:- View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK:- TableView methods
    // MARK: sections methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section{
        case 0:
            return profile.count
        case 1:
            return menuList.count
        case 2:
            return favoritesList.count
        case 3:
            return supportList.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 2 ? "FAVORITES" : " "
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 2 ? 60.0 : 30.0
    }
    
    // MARK: Cell methods
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let contentCell: ContentTableViewCell = tableView.dequeueReusableCell(withIdentifier: self.contentCellIdentifier) as? ContentTableViewCell else { return UITableViewCell() }
        
        guard let profileCell: ProfileTableViewCell = tableView.dequeueReusableCell(withIdentifier: self.profileCellIdentifier) as? ProfileTableViewCell else {
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
            contentCell.contentImage.image = UIImage(named: menuImages[indexPath.row])
            contentCell.contentLabel?.text = menuList[indexPath.row]
            return contentCell
        case 2:
            contentCell.contentImage.image = nil
            contentCell.contentLabel?.text = favoritesList[indexPath.row]
            return contentCell
        case 3:
            contentCell.contentImage.image = UIImage(named: supportImages[indexPath.row])
            contentCell.contentLabel?.text = supportList[indexPath.row]
            return contentCell
        default:
            contentCell.contentImage.image = nil
            contentCell.contentLabel?.text = "default"
            return contentCell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 100.0 : 60.0
    }
    
    
}

