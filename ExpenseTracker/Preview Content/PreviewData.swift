//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Fran Alarza on 27/9/22.
//

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "22/07/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Apple", amount: 11.49, type: TransactionType.debit.rawValue, categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var tansactionsListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
