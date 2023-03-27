//
//  SolarGramRow.swift
//  SolarGram_JStrange
//
//  Created by Janae Strange on 3/25/23.
//


import SwiftUI

struct SolarGramRow: View {
    
    @EnvironmentObject var viewModel: SolarGramPostsViewModel
    var post: Post
    
    private var labelOpacity: CGFloat {
        #if os(iOS)
            0.88
        #else
            0.33
        #endif
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("\(post.id)_\(post.name)")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                Text(post.name)
                    .font(.headline)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 3)
                            .foregroundColor(post.color)
                            .opacity(labelOpacity)
                    }
                    .overlay {
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(post.color, lineWidth: 1)
                    }
                Spacer()
            }
        }
        .overlay(alignment: .top, content: {
            HStack {
                Spacer()
                Button {
                    viewModel.setFavorite(post: post)
                } label: {
                    if post.isFavorite {
                        Image(systemName: "heart.fill")
                    } else {
                        Image(systemName: "heart")
                    }
                }
                .foregroundColor(post.color)
            }
        })
        .padding()
    }
}


struct SolarGramRow_Previews: PreviewProvider {
    static var previews: some View {
        let test = Post(id: 1, name: "AB", color: .green, isFavorite: false)
        SolarGramRow(post: test)
    }
}
