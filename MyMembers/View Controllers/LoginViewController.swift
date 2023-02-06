//
//  LoginViewController.swift
//  MyMembers
//
//  Created by Kieran Hardwick on 05/02/2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupElements()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Functions
    
    func setupElements() {
        errorLabel.isHidden = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
