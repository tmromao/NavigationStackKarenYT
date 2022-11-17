//
//  BookDetailView.swift
//  NavigationStackKarenYT
//
//  Created by Tiago Miguel de Jesus Romao on 17/11/2022.
//
import SwiftUI

struct BookDetailView: View {
    
    let book: Book
    
    var body: some View {
        VStack {
            Text("Book detail view")
            
            Divider()
            
            NavigationLink("Suggestion 1", value: SelectionState.book(Book(title: "Suggestion 1")))
            
            NavigationLink("Suggestion 2", value: SelectionState.book(Book(title: "Suggestion 2")))
            
            NavigationLink("Suggestion 3", value: SelectionState.book(Book(title: "Suggestion 3")))
        }
        .navigationTitle(book.title)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDestinationView(book: Book(title: "Alice in Wonderland"))
    }
}
