//
//  SearchView.swift
//  SolarGram_JStrange
//
//  Created by Janae Strange on 3/5/23.
//

import SwiftUI

struct SearchView: View {
    @State var text: String
    
    var body: some View {
        VStack(spacing: 10.0) {
            SearchInput(text: text)
                .padding(.horizontal, 16)
            
            Labels()
            
        }

        Spacer()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(text: "")
    }
}
