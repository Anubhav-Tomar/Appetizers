//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Anubhav Tomar on 28/06/24.
//

import SwiftUI

@MainActor final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
//    func getAppatizers() {
//        isLoading = true
//        NetworkManager.shared.getAppetizers { result in
//            DispatchQueue.main.async { [self] in
//                isLoading = false
//                switch result {
//                case .success(let appetizers):
//                    self.appetizers = appetizers
//                    
//                case .failure(let error):
//                    switch error {
//                    case .invalidURL:
//                        alertItem = AlertContext.invalidURl
//                        
//                    case .invalidResponse:
//                        alertItem = AlertContext.invalidResponse
//                        
//                    case .invalidData:
//                        alertItem = AlertContext.invalidData
//                        
//                    case .unableToComplete:
//                        alertItem = AlertContext.unableToComplete
//                    }
//                }
//            }
//        }
//    }
    
    func getAppatizers() {
        isLoading = true
        
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch {
                if let apError = error as? APError {
                    switch apError {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURl
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.invalidResponse
                }
                
                isLoading = false
            }
        }
    }
}
