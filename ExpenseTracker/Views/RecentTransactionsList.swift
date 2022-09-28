//
//  RecentTransactionsList.swift
//  ExpenseTracker
//
//  Created by Fran Alarza on 27/9/22.
//

import SwiftUI

struct RecentTransactionsList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    var body: some View {
        VStack {
            HStack {
                // MARK: Header Title
                Text("Recent Transactions")
                    .bold()
                
                Spacer()
                // MARK: Header Link
                NavigationLink {
                    TransactionsList()
                } label: {
                    HStack(spacing: 4) {
                        Text("See All")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(Color.text)
                }

            }
            .padding(.top)
            
            // MARK: Recent Transaction List
            ForEach(Array(transactionListVM.transactions.prefix(5).enumerated()), id: \.element) { index, transaction in
                TransactionRow(transaction: transaction)
                
                Divider()
                    .opacity(index == 4 ? 0 : 1)
            }
        }
        .padding()
        .background(Color.systemBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
    }
}

struct RecentTransactionsList_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = tansactionsListPreviewData
        return transactionListVM
    }()
    static var previews: some View {
        RecentTransactionsList()
            .environmentObject(transactionListVM)
    }
}
