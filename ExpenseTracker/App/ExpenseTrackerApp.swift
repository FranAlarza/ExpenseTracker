//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Fran Alarza on 26/9/22.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
