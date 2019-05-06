//
//  AlarmController.swift
//  Alarm
//
//  Created by Leah Cluff on 5/6/19.
//  Copyright © 2019 Leah Cluff. All rights reserved.
//

import Foundation
// add : AlarmScheduler to class
class AlarmController {
    
    static let shared = AlarmController()
    var alarms = [Alarm]()
    
    func create(name: String, fireDate: Date, enabled: Bool){
        
       
        
        let alarm = Alarm(fireDate: fireDate, name: name)
        alarm.enabled = enabled
        AlarmController.shared.alarms.append(alarm)
        
        //saveToPersistentStore()
        
    }
    func update(alarm: Alarm, name: String, fireDate: Date, enabled: Bool) {
        
         //cancelUserNotification(for: alarm)
        
        alarm.name = name
        alarm.fireDate = fireDate
        alarm.enabled = enabled
    }
    
    func delete(alarm: Alarm, name: String, fireDate: Date, enabled: Bool) {
        guard let index = AlarmController.shared.alarms.firstIndex(of: alarm) else {return}
        alarms.remove(at: index)
        
        //saveToPersistentStore()
    }
    
    func toggleEnabled(for alarm: Alarm) {
        alarm.enabled = !alarm.enabled
//
//        if alarm.enabled{
//            scheduleUserNotification(for: alarm)
//        }else{
//            cancelUserNotification(for: alarm)
        
        }
        
    }

//protocol AlarmScheduler: class {
//    func scheduleUserNotification(for: Alarm)
//    func cancelUserNotification(for: Alarm)
//
//}
//extension AlarmScheduler{
//
//    func scheduleUserNotification(for: Alarm){
//
//    }
//}
