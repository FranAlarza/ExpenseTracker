//
//  String+Extension.swift
//  ExpenseTracker
//
//  Created by Fran Alarza on 27/9/22.
//

import Foundation

extension String {
    func dateParsed() -> Date {
        guard let parsedDate = DateFormatter.allNumericUSA.date(from: self) else { return Date() }
        return parsedDate
    }
}
