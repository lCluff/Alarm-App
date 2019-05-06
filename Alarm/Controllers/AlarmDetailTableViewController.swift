//
//  AlarmDetailTableViewController.swift
//  Alarm
//
//  Created by Leah Cluff on 5/6/19.
//  Copyright © 2019 Leah Cluff. All rights reserved.
//

import UIKit
//add in AlarmScheduler
class AlarmDetailTableViewController: UITableViewController {
    
    var alarm: Alarm?{
        didSet{
            loadViewIfNeeded()
            self.updateViews()
        }
    }
    var alarmIsOn: Bool = true
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var alarmEnabledButton: UIButton!
    @IBOutlet weak var titleTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func updateViews(){
        guard let alarm = alarm else {return}
        alarmIsOn = alarm.enabled
        datePicker.date = alarm.fireDate
        titleTextField.text = alarm.name
        setUpAlarmButton()
        
    }
    func setUpAlarmButton(){
        
        switch alarmIsOn {
        case true:
            alarmEnabledButton.backgroundColor = UIColor.cyan
            alarmEnabledButton.setTitle("ON", for: .normal)
        case false:
            alarmEnabledButton.backgroundColor = UIColor.gray
            alarmEnabledButton.setTitle("OFF", for: .normal)
        }
    }
    
    @IBAction func enableButtonTouched(_ sender: Any) {
    }
    
}
