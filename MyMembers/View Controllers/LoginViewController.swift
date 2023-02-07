//
//  LoginViewController.swift
//  MyMembers
//
//  Created by Kieran Hardwick on 05/02/2023.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var errorLabel: UILabel!
    
   // MARK: IBActions
    @IBAction func loginButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "loginSuccess", sender: (Any).self)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupElements()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Functions
    
    func setupElements() {
        errorLabel.isHidden = true
    }
    
    

    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginSuccess" {
        }
    }
    

}
