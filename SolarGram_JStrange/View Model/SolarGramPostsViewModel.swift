//
//  SolarGramPostsViewModel.swift
//  SolarGram_JStrange
//
//  Created by Janae Strange on 3/26/23.
//

import SwiftUI

class SolarGramPostsViewModel: ObservableObject {

    
    @Published var model: SolarGramPostsManager = SolarGramPostsManager()

    
    var SolarGramPosts: [Post] {
        model.posts
    }

    func addPostFrom(image: UIImage?) {
    
        guard let image else {return}
        
        DispatchQueue.main.async {
        
    
//            let newPost1 = PostView(image: Image(uiImage: image), description: "Something New", isFavorite: false, author: User.currentUser)
//
            let newPost = Post(id: 10, name: "New", color: .yellow, isFavorite: false)

            self.model.add(post: newPost)
        }
    }
    func setFavorite(post: Post) {
        
    }
    
//    self.model.toggleFavorite(post)
    
    
}
