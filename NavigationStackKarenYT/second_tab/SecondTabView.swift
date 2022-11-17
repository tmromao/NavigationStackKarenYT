//
//  SecondTabView.swift
//  NavigationStackKarenYT
//
//  Created by Tiago Miguel de Jesus Romao on 17/11/2022.
//

import SwiftUI

struct SecondTabView: View {
    
    let books: [Book] = Book.examples()
    @State private var selectedBookPath = [Book]()
    
    
    var body: some View {

        VStack {
            NavigationStack(path: $selectedBookPath) {
                List{
                    ForEach(books) { book in
                        NavigationLink(book.title, value: book)
                    }
                }
                .navigationDestination(for: Book.self) { book in
                    BookDestinationView(book: book)
                }
            }
            
            VStack{
                ForEach(selectedBookPath) { book in
                    /*@START_MENU_TOKEN@*/Text(book.title)/*@END_MENU_TOKEN@*/
                }
                
                Button{
                    guard let book = books.first else { return }
                    
                    selectedBookPath = [book]
                } label: {
                    Text("Go to favorite")
                }
            }
        }
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
