//
//  LoginViewController.swift
//  MyMembers
//
//  Created by Kieran Hardwick on 05/02/2023.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    var email = ""
    var password = ""
    
    // MARK: IBOutlets
    @IBOutlet weak var errorLabel: UILabel!
    
   // MARK: IBActions
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        email = emailTextField.text ?? ""
        password = passwordTextField.text ?? ""
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            // ...
            if let error = error {
                self?.errorLabel.text = "Error: \(error.localizedDescription)"
                self?.errorLabel.isHidden = false
                print("Error signing in: \(error.localizedDescription)")
            } else {
                print("Successfully signed in")
                self?.performSegue(withIdentifier: "loginSuccess", sender: strongSelf)
            }

        }
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
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
