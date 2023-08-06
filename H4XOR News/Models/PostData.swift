//
//  PostData.swift
//  H4XOR News
//
//  Created by Vedran Novak on 06.08.2023..
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    
    // Computed property
    var id: String {
        return objectID
    }
    
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
