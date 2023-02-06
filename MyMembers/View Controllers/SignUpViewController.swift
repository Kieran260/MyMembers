//
//  SignUpViewController.swift
//  MyMembers
//
//  Created by Kieran Hardwick on 05/02/2023.
//

import UIKit

class SignUpViewController: UIViewController {

    
    // MARK: IBOutlets
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordConfirmField: UITextField!
    
    // MARK: IBActions
    @IBOutlet weak var signUpButton: UIButton!
    
    
    
    // MARK: View Related
    
    override func viewDidLoad() {
        
        setUpElements()
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: Functions
    
    func setUpElements() {
        errorLabel.isHidden = true
        
        
    }
    

   

}
