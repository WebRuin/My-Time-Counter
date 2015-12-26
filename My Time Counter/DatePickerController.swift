//
//  DatePickerController.swift
//  My Time Counter
//
//  Created by Tim Smith on 12/25/15.
//  Copyright © 2015 WebRuin. All rights reserved.
//

import UIKit

class DatePickerController: UIViewController {
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var dateDisplay: UILabel!
    @IBOutlet var dayDisplay: UILabel!
    @IBOutlet var monthDisplay: UILabel!
    @IBOutlet var yearDisplay: UILabel!
    
    let dateFormatter = NSDateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func datePickerChanged(sender: AnyObject) {
        setDate()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Date Format
    func setDate() {
        dateFormatter.dateFormat = "dd"
        dayDisplay.text = dateFormatter.stringFromDate(datePicker.date)
        dateFormatter.dateFormat = "MM"
        monthDisplay.text = dateFormatter.stringFromDate(datePicker.date)
        dateFormatter.dateFormat = "yyyy"
        yearDisplay.text = dateFormatter.stringFromDate(datePicker.date)
    }
    
    

}
