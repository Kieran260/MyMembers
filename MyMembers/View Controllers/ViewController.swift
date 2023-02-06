//
//  ViewController.swift
//  MyMembers
//
//  Created by Kieran Hardwick on 05/02/2023.
//

import UIKit

// MARK: Extensions


class ViewController: UIViewController, UIScrollViewDelegate {

    
    let labels = ["Page 1", "Page 2", "Page 3"]
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!

    
    // MARK: IBActions
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    

  



    
    
    // MARK: View Related
    
    override func viewDidLoad() {
        
        
        setUpElements()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setUpElements() {
        
    }
    


    
   


}

