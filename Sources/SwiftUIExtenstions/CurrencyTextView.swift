//
//  TextFieldExtension.swift
//  SwiftUIExtensions
//
//  Created by Vidhyapathi on 15/07/25.
//

import SwiftUI

@available(macOS 13, *)
@available(iOS 16, *)
struct CurrencyTextView: View {
    
    @State private var text: Double
    
    init(text: Double) {
        self.text = text
    }
    
    var body: some View {
        Text(text, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
    }
}

#Preview {
    if #available(macOS 13, *) {
        CurrencyTextView(text: 12.0)
    } else {
        // Fallback on earlier versions
    }
}
