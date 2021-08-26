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
    
    var user = UserInformation.init(userName: "탁제원", imageName: "bayMax", introduction: "ios 개발자 입니다")
    let cellInformation = CellInformations()
    let facebookColor = FacebookSpecs.Colors().facebookColor
    
    let contentCellIdentifier: String = "contentCell"
    let profileCellIdentifier: String = "profileCell"
    let logOutCellIdentifier: String = "logOutCell"
    let moreInformationCellIdentifier: String = "moreInformationCell"
    
    private var numberOfRows: [Int] = []

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
        
        let numberOfRows: [Int] = [1, cellInformation.menuCellInformation.count, cellInformation.favoritesCellInformation.count, cellInformation.supportCellInformation.count, 1]
        
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
            profileCell.setProfileCellData(with: user)
            return profileCell
        case 1:
            contentCell.setMenuContentCell(with: cellInformation, indexPath: indexPath.row)
            return contentCell
        case 2:
            contentCell.setFavoritesContentCell(with: cellInformation, indexPath: indexPath.row)
            return contentCell
        case 3:
            contentCell.setSupportContentCell(with: cellInformation, indexPath: indexPath.row)
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

