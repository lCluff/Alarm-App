//
//  SwitchTableViewCell.swift
//  Alarm
//
//  Created by Leah Cluff on 5/6/19.
//  Copyright © 2019 Leah Cluff. All rights reserved.
//

import UIKit

class AlarmTableViewCell: UITableViewCell {
    
    var alarm: Alarm?{
        didSet{
            updateViews()
        }
    }
    weak var delegate: AlarmTableViewCellDelegate?
    
    
    @IBOutlet weak var nameLabel: UIStackView!
    @IBOutlet weak var timeLabel: UIStackView!
    @IBOutlet weak var alarmSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func switchValueChanged(_ sender: Any) {
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    func updateViews(){
        guard let alarm = alarm else {return}
        timeLabel.text = alarm.fireTimeAsString
        nameLabel.text = alarm.name
        alarmSwitch.isOn = alarm.enabled
    }
}
