//
//  SearchInput.swift
//  SolarGram_JStrange
//
//  Created by Janae Strange on 3/5/23.
//

import SwiftUI

struct SearchInput: View {
    @State var text: String
    
    var body: some View {
        VStack(spacing: 0.0) {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search", text: $text)
                    

            }
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}

struct SearchInput_Previews: PreviewProvider {
    static var previews: some View {
        SearchInput(text: "")
    }
}
