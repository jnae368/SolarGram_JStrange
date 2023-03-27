//
//  ContentView.swift
//  SolarGram_JStrange
//
//  Created by Janae Strange on 3/3/23.
//
//Doug - I know this is not exactly like your example but I wanted to take advantage of learning more details while I can. "Label" and "Labels" and "SearchView" you can ignore. The amount of clarity from this project...I know my oerganization is different from the Swift tutorial but creating and editing in one file really helped me as well. I'm kind of thrilled but of course, I am open to any feedback you have.

//Doug, this is as far as I got. It's not pretty. Or complete. Look, I'm not a coder. See yourself as training me to work with coders even better than I already have. Out of the many things I am strong at, this ain't one of them and that's what you helped me learn in this course. *Don't go for coding jobs.*



import SwiftUI

struct ContentView: View {
    
//    @StateObject var viewModel: SolarGramPostsViewModel
   
    var body: some View {
        
//        SolarGramList(viewModel: viewModel)
        VStack(spacing: 0.0) {
            Header()
            ScrollView(.vertical, showsIndicators: false){
                Stories()
                
                Divider()
               
                PostView()
                
//                Post(image: "MMFR", description: "My fav movie!")
            }
            
            TapBar()
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}


struct Header: View {
    @State var isActionSheetPresented = false
    var body: some View {
        HStack(spacing: 0.0){
            Image("SolarGram5")
            
            Spacer()
            HStack{
                Image("Add").onTapGesture {
                    isActionSheetPresented = true
                }.actionSheet(item: $isActionSheetPresented) {
                    ActionSheet(title: Text("Add post image"), message: Text("Select on option to add image from"), buttons: [
                        .cancel(),
                        .default(Text("Photo Library"), action: {
                            //prsent yoiur imagePicker class
                        }),
                        .default(Text("Camera"), action: {
                            //prsent yoiur camera class
                        })
                    ])}
                Image("Menu")
            }
            
        }
        .padding(.horizontal, 27)
    }
}


struct Story: View {
    var image: String = "Marlow"
    var name: String = "Marlow"
    
    var body: some View {
        VStack {
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 80)
            
            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators:
                    false) {
            HStack(spacing: 15.0){
                Story()
                Story(image: "Spartacus", name: "Spartacus")
                Story(image: "Midge", name: "Midge")
                Story(image: "Outkast", name: "Outkast")
                Story(image: "MrsMaisel", name: "Mrs. Maisel")
                Story(image: "MMFR", name: "MMFR")
                Story(image: "Furiosa", name: "Furiosa")
                Story(image: "FiveWives", name: "FiveWives")
            }
            .padding(.horizontal, 8)
        }
                    .padding(.vertical, 12)
    }
}

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack{
                Image("Marlow")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text("Marlow")
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
            Spacer()
            
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostContent: View {
    var image: String = "Marlow"
    
    var body: some View {
        VStack(spacing: 0.0) {
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            
            HStack {
                HStack(spacing: 10.0) {
                    Image("Heart1")
                    Image("Comment")
                    Image("Message")
                    
                }
                Spacer()
                
                Image("Save")
                
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct PostView: View {
    var image: String = "Marlow"
    var description: String = "I'll get her back"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            PostHeader()
            
            PostContent(image: image)
            
            Text("Liked by Juliana and others")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            Text(description)
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            HStack {
                HStack (spacing: 7.0) {
                    Image("Marlow")
                        .resizable().frame(width: 24, height: 24)
                        .cornerRadius(50)
                    
                    Text("Add connent...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                HStack{
                    Text("😄")
                    Text("🤣")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct TapBar: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Divider()
            
            HStack {
                Image("home")
                Spacer()
                Image("search")
                Spacer()
                Image("reels")
                Spacer()
                Image("shop")
                Spacer()
                Image("Marlow")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .cornerRadius(50)
            }
            .padding(.horizontal, 25)
            .padding(.top, 10)
            
        }
    }
}
