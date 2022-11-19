//
//  ViewController.swift
//  NumSeriesStoryboard
//
//  Created by Bhumika Patel on 19/11/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    @IBOutlet var txtNumber: UITextField!
    @IBOutlet var tblView: UITableView!
    
    @IBOutlet var txtView: UITextView!
    var displayArray = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.dataSource = self
        tblView.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBAction func btnDisplay(_ sender:Any){
        
        let enterNumber = Int(txtNumber.text!)
        var index = 1
        
        
        for number in index...enterNumber!{
            print(number)
            displayArray.append(number)
            tblView.reloadData()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return displayArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "\(displayArray[indexPath.row])"
        return cell
    }
}

