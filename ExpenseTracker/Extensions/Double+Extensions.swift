//
//  Double+Extensions.swift
//  ExpenseTracker
//
//  Created by Fran Alarza on 28/9/22.
//

import Foundation

extension Double {
    func roundedTo2Digits() -> Double {
        return (self * 100).rounded() / 100
    }
}
