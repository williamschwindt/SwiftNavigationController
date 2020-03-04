//
//  ContactDetailsViewController.swift
//  SwiftContacts
//
//  Created by William Schwindt on 3/4/20.
//  Copyright © 2020 William Schwindt. All rights reserved.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var ContactLabel: UILabel!
    
    var contact: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ContactLabel.text = contact

        // Do any additional setup after loading the view.
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
