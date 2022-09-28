//
//  DateFormatter+Extension.swift
//  ExpenseTracker
//
//  Created by Fran Alarza on 27/9/22.
//

import Foundation

extension DateFormatter {
    static let allNumericUSA: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter
    }()
}
