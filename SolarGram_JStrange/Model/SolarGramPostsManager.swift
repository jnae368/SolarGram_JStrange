//
//  SolarGramPostsManager.swift
//  SolarGram_JStrange
//
//  Created by Janae Strange on 3/26/23.
//
import Foundation
import SwiftUI

struct SolarGramPostsManager {
    
    var posts: [Post] = [Post(id: 1, name: "AB", color: .green, isFavorite: false),
                        Post(id: 4, name: "CD", color: .red, isFavorite: false),
                        Post(id: 7, name: "EF", color: .blue, isFavorite: false),
                        Post(id: 25, name: "GH", color: .yellow, isFavorite: false)]

    mutating func add(post: Post) -> Void {
        posts.append(post)
    }
}


struct Post: Identifiable {
    var id: Int
    var name: String
    var color: Color
    var isFavorite: Bool = false
}

