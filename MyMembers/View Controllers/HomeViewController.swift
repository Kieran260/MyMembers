//
//  HomeViewController.swift
//  MyMembers
//
//  Created by Kieran Hardwick on 05/02/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: Variables
    var name = String()
   
    // MARK: IBOutlets
    @IBOutlet weak var greetingLabel: UILabel!
    
    
    // MARK: IBActions
    
    @IBAction func logoutButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "unwindToViewController", sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setUpElements()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Functions
    
    func setUpElements() {
        greetingLabel.text = "Hello, \(name)"
    }

}
