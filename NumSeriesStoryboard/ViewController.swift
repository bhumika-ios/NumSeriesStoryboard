//
//  ViewController.swift
//  NumSeriesStoryboard
//
//  Created by Bhumika Patel on 19/11/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var txtNumber: UITextField!
    
    @IBOutlet var txtView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnDisplay(_ sender:Any){
        
        let enterNumber = Int(txtNumber.text!)
    }

}

