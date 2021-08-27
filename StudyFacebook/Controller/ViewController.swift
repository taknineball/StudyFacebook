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
    
    private var user = UserInformation.init(userName: "탁제원", imageName: "bayMax", introduction: "ios 개발자 입니다")
    let cellInformation = CellInformations()
    let facebookColor = FacebookSpecs.Colors().facebookColor
    let sectionInformation = sectionInformations()
    
    let contentCell = ContentTableViewCell()
    let profileCell = ProfileTableViewCell()
    let logOutCell = LogOutTableViewCell()


    // MARK:- View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK:- TableView methods
    // MARK: sections methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionInformation.numbersOfRowInSection.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionInformation.numbersOfRowInSection[section]
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionInformation.titleOfSections[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return sectionInformation.sizeOfSections[section]
    }
    
    // MARK: Cell methods
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let contentCell: ContentTableViewCell = tableView.dequeueReusableCell(withIdentifier: contentCell.contentCellIdentifier) as? ContentTableViewCell else {
            return UITableViewCell()
        }
        
        guard let profileCell: ProfileTableViewCell = tableView.dequeueReusableCell(withIdentifier: profileCell.profileCellIdentifier) as? ProfileTableViewCell else {
            return UITableViewCell()
        }
        
        guard let logOutCell: LogOutTableViewCell = tableView.dequeueReusableCell(withIdentifier: logOutCell.logOutCellIdentifier) as? LogOutTableViewCell else {
            return UITableViewCell()
        }

        
        switch indexPath.section{
        case 0:
            profileCell.setProfileCellData(with: user)
            return profileCell
        case 1:
            contentCell.setMenuContentCell(with: cellInformation, indexPath: indexPath.row, cellName: contentCell)
            return contentCell
        case 2:
            contentCell.setFavoritesContentCell(with: cellInformation, indexPath: indexPath.row, cellName: contentCell)
            return contentCell
        case 3:
            contentCell.setSupportContentCell(with: cellInformation, indexPath: indexPath.row, cellName: contentCell)
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

