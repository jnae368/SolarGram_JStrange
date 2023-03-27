//
//  SolarGramList.swift
//  SolarGram_JStrange
//
//  Created by Janae Strange on 3/26/23.
//

import SwiftUI

struct SolarGramList: View {
    
    @ObservedObject var viewModel: SolarGramPostsViewModel
    
    var body: some View {
        imageList
    }
    
    var imageList: some View {
        
//        ScrollView {
//            ForEach(feed) { post in ListView(post: post)
//            }
//        }
        
        List(viewModel.model.posts) { post in
            SolarGramRow(post: post)
        }
    }
}

//struct SolarGramList_Previews: PreviewProvider {
//    static var previews: some View {
//        SolarGramList()
//            .environtmentObject(SolarGramPostsViewModel())
//    }
//}

