//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Fran Alarza on 26/9/22.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    Text("Overview")
                        .font(.title2)
                        .bold()
                    // MARK: Chart
                    VStack {
                        let data = transactionListVM.accumulateTransactions()
                        let totalExpenses = data.last?.1 ?? 0
                        LineChartView(data: data.map{$1}, title: totalExpenses.formatted(.currency(code: "USD")), legend: nil, rateValue: nil, valueSpecifier: "$%.02f")
                    }

                    // MARK: TransactionList
                    RecentTransactionsList()
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Image(systemName: "bell.badge")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.icon)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = tansactionsListPreviewData
        return transactionListVM
    }()
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
        .environmentObject(transactionListVM)
        
    }
}
