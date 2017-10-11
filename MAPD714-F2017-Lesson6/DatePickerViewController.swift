//
//  DatePickerViewController.swift
//  MAPD714-F2017-Lesson6
//
//  Created by Amandeep Sekhon on 2017-10-11.
//  Copyright © 2017 Amandeep Sekhon. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let date = NSDate()
        datePicker.setDate(date as Date, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func OnButtonPressed(_ sender: UIButton) {
   
    let date = datePicker.date
      //  print(date)
    let message = "The date and time you selected is \(date)"
       
        let alert = UIAlertController(
            title: "Date and Time Selected",
                                      message:message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
        
        title: "That's So True!",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true ,completion: nil)
    
    

    }}
