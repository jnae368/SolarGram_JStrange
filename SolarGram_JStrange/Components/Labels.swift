//
//  Labels.swift
//  SolarGram_JStrange
//
//  Created by Janae Strange on 3/5/23.
//

import SwiftUI

struct Labels: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8.0) {
                Label(text: "Design")
                Label(text: "Dog")
                Label(text: "Paris")
                Label(text: "USC")
                Label(text: "NYC")
                Label(text: "Art")
            }
            .padding(.horizontal, 16)
            .frame(width: .infinity, height: 38)
        }
    }
}

struct Labels_Previews: PreviewProvider {
    static var previews: some View {
        Labels()
    }
}
