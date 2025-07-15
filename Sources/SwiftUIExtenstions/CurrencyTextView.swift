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
    
    var body: some View {
        Text(text, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
    }
}
