//
//  FeedbackCustomView.swift
//  MySparTestProject1221
//
//  Created by Akai on 4/2/24.
//

import SwiftUI

let ratings = [5, 4, 3, 2, 1]

struct FeedbackCustomView: View {
    
    @State var name: String = ""
    @State var date: String = ""
    @State var feedback: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text(name)
                    .fontWeight(.medium)
                Spacer()
            }
            
            HStack {
                Text(date)
                    .foregroundColor(Color.gray)
                Spacer()
            }
            
            HStack(spacing: 0) {
                ForEach(ratings, id: \.self) { rating in
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                }
                Spacer()
            }
            
            HStack {
                Text(feedback)
            }

        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
        

    }
}

#Preview {
    FeedbackCustomView()
}
