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
   
    var index = 1
    var displayArray = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.dataSource = self
        tblView.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBAction func btnDisplay(_ sender:Any){
        
        
        NumberSeries()
        
//        for number in index...enterNumber!{
//            print(number)
//
//                displayArray.append(number)
//                tblView.reloadData()
//
//
//        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return displayArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "\(displayArray[indexPath.row])"
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == displayArray.count - 1 {
            NumberSeries()
        }
    }
    func NumberSeries() {
        let enterNumber = Int(txtNumber.text!)
        for number in index...enterNumber!{
            print(number)
           
            displayArray.append(number)
           // displayArray.append(displayArray.last! + 1)
                tblView.reloadData()
            
           
        }
    }
}

