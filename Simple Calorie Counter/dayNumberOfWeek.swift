//
//  DayOfWeek.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/21/23.
//

import Foundation

extension Date {
    func dayNumberOfWeek() -> Int? {
        return Calendar.current.dateComponents([.weekday], from: self).weekday
    }
}
