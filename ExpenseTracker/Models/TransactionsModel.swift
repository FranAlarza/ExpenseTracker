//
//  TransactionsModel.swift
//  ExpenseTracker
//
//  Created by Fran Alarza on 27/9/22.
//

import Foundation

struct Transaction: Identifiable, Decodable {
    let id: Int
    let date: String
    let institution: String
    let account: String
    let merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    let categoryId: Int
    var category: String
    let isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
    
    var dateParsed: Date {
        date.dateParsed()
    }
    
    var signedAmount: Double {
        return type == TransactionType.credit.rawValue ? amount : -amount
    }
}

/**
 
 "id": 25,
 "date": "02/16/2022",
 "institution": "Desjardins",
 "account": "Visa Desjardins",
 "merchant": "STM",
 "amount": 6.50,
 "type": "debit",
 "categoryId": 101,
 "category": "Public Transportation",
 "isPending": true,
 "isTransfer": false,
 "isExpense": true,
 "isEdited": false
 */

enum TransactionType: String {
    case debit = "debit"
    case credit = "credit"
}
