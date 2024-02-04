//
//  CustomButton.swift
//  MySparTestProject1221
//
//  Created by Akai on 4/2/24.
//

import SwiftUI

struct CustomButton: View {
    
    @State var buttonText = ""
    let action: () -> Void
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 1000)
                .fill(Color.clear)
                .overlay(
                    HStack {
                        Button(action: {
                            action()
                        }) {
                            HStack(spacing: 4) {
                                Text(buttonText)
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.green)
                            }
                        }
                    }
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 1000)
                        .stroke(Color.green, lineWidth: 1)
                )
            
        }
        .frame(maxWidth: .infinity, maxHeight: 44)
    }
}

#Preview {
    CustomButton(action: {})
}
