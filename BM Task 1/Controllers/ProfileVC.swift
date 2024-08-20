//
//  profileVC.swift
//  BM Task 1
//
//  Created by Mahmoud Elsharkawy on 19/07/2024.
//

import UIKit

class ProfileVC: UIViewController {

    var user: User!
    
    @IBOutlet weak var profImg: UIImageView!
    
    @IBOutlet weak var profName: UILabel!
    
    @IBOutlet weak var profEmail: UILabel!
    
    @IBOutlet weak var profPhone: UILabel!
    
    @IBOutlet weak var profAddress: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupProfile()
    }
    

    @IBAction func logoutBtnTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        appDelegate.switchToAuthState()
        
//        showLogoutAlert {
//            self.logoutUser()
//           
//                }
    }
 
    
    private func setupProfile() {
        guard let user = user else { return }
        profImg.image = user.image
        profName.text = user.name
        profEmail.text = user.email
        profPhone.text = user.phone
        profAddress.text = user.address
    }
}
// MARK: - Logout
//extension ProfileVC {
//    private func logoutUser() {
//           
//           let defaults = UserDefaults.standard
//           defaults.removeObject(forKey: "userName")
//           defaults.removeObject(forKey: "userEmail")
//           defaults.removeObject(forKey: "userPassword")
//           defaults.removeObject(forKey: "userPhone")
//           defaults.removeObject(forKey: "userAddress")
//           defaults.removeObject(forKey: "userImage")
//    }
//}
