//
//  FeedbackModel.swift
//  MySparTestProject1221
//
//  Created by Akai on 4/2/24.
//

import Foundation

struct FeedbackModel: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let date: String
    let ratings: [Int]
    let comment: String
}
