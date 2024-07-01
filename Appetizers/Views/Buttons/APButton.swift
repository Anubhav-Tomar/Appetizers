//
//  APButton.swift
//  Appetizers
//
//  Created by Anubhav Tomar on 30/06/24.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.primary)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Test")
}
