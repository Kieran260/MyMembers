//
//  MembershipViewController.swift
//  MyMembers
//
//  Created by Kieran Hardwick on 17/02/2023.
//

import UIKit
import Firebase
import FirebaseFirestore

class MembershipViewController: UIViewController {

    @IBAction func newMembershipButton(_ sender: Any) {
     
    }
    
    
    override func viewDidLoad() {
        dbSetup()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func dbSetup() {
        let db = Firestore.firestore()
        guard let user = Auth.auth().currentUser else { return }
        let userID = user.uid
        print("Current user ID is: \(userID)")

        db.collection("users").document(userID).getDocument { (document, error) in
            if let error = error {
                print("Error getting user document: \(error.localizedDescription)")
            } else if let document = document, document.exists {
                print("User document data: \(String(describing: document.data()))")
            } else {
                print("User document does not exist")
            }
        }
        

        let membershipData = ["name": "Example Membership"]
        let membershipsCollectionRef = db.collection("users").document(userID).collection("memberships")
        membershipsCollectionRef.addDocument(data: membershipData) { (error) in
            if let error = error {
                print("Error adding membership: \(error.localizedDescription)")
            } else {
                print("Membership added successfully")
            }
        }



        
        
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
