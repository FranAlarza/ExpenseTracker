//
//  Date+Extensions.swift
//  ExpenseTracker
//
//  Created by Fran Alarza on 28/9/22.
//

import Foundation

extension Date {
    func formatted() -> String {
        return self.formatted(.dateTime.year().month().day())
    }
}
