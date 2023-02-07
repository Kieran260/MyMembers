//
//  ViewController.swift
//  MyMembers
//
//  Created by Kieran Hardwick on 05/02/2023.
//

import UIKit

// MARK: Extensions

extension ViewController {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let width = UIScreen.main.bounds.width-80
        let page = Int(scrollView.contentOffset.x / width)
        
        pageControl.currentPage = page
    }
}

class ViewController: UIViewController, UIScrollViewDelegate {

    // MARK: IBActions
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    

    // MARK: IBOutlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    
    
    // MARK: View Related
    override func viewDidLoad() {
        setUpElements()
        createScrollViewContent()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setUpElements() {
        
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        scrollView.setContentOffset(CGPoint.zero, animated: true)
    }
    
    
    func createScrollViewContent() {
        scrollView.delegate = self
        
        let labels = ["Free yourself from managing your memberships on multiple platforms.", "Avoid missing renewal dates and manage your finances all in one place.", "Eliminate email interactions and communicate with your organisation directly."]
        let imageNames = ["pg1", "pg2", "pg3"]
        
        let width = UIScreen.main.bounds.width-80
        let height = 300

        scrollView.contentSize = CGSize(width: Int(width) * labels.count, height: height)
        scrollView.isPagingEnabled = true
        
        pageControl.currentPage = 0
        
        // ImageView
        var x : CGFloat = 0
        for imgName in imageNames {
            let frame = CGRect(x: x, y: 0, width: width, height: CGFloat(height))
            let imageView = UIImageView(frame: frame)
            imageView.image = UIImage(named: imgName)
            scrollView.addSubview(imageView)
            x += width
        }
        
        // TextView
        var xx : CGFloat = 0
        for label in labels {
            let frame = CGRect(x: xx, y: 300, width: width, height: CGFloat(50))
            let textView = UITextView(frame: frame)
            textView.text = label
            textView.font = UIFont(name: "Articulat CF Normal", size: 14)
            textView.isEditable = false
            textView.isSelectable = false
            textView.isUserInteractionEnabled = false
            scrollView.addSubview(textView)
            xx += width
        }
    }
}

