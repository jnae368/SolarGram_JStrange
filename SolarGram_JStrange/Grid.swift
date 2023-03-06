//
//  Grid.swift
//  SolarGram_JStrange
//
//  Created by Janae Strange on 3/5/23.
//

import SwiftUI

struct Grid: View {
    var images: [String] = ["camera", "couple", "goddess", "heartnhome", "kitty", "viking"]
    
    var columnGrid: [GridItem] = [GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1)]

    var body: some View {
        LazyVGrid(columns: columnGrid, spacing: 1) {
            ForEach((0...44), id: \.self) {
                Image(images[$0 % images.count])
                    .resizable()
                    .scaledToFill()
                    .frame(width: (UIScreen.main.bounds.width / 3) - 1, height: (UIScreen.main.bounds.width / 3) - 1)
                    .clipped()
            }
        }
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
