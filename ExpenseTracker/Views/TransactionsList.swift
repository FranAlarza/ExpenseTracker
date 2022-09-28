//
//  TransactionsList.swift
//  ExpenseTracker
//
//  Created by Fran Alarza on 28/9/22.
//

import SwiftUI

struct TransactionsList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    var body: some View {
        VStack {
            List {
                ForEach(Array(transactionListVM.groupTransactionsByMonth()), id: \.key) { month, transaction in
                    Section {
                        ForEach(transaction) { row in
                            TransactionRow(transaction: row)
                        }
                    } header: {
                        Text(month)
                    }
                }
            }
        }
        .navigationTitle("Transactions")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TransactionsList_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = tansactionsListPreviewData
        return transactionListVM
    }()
    static var previews: some View {
        NavigationView {
            TransactionsList()
        }
        .environmentObject(transactionListVM)
    }
}
