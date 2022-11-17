//
//  Book.swift
//  NavigationStackKarenYT
//
//  Created by Tiago Miguel de Jesus Romao on 17/11/2022.
//

import Foundation

struct Book:Identifiable, Hashable, Codable {
    
    var title: String
    let id: UUID
    
    init(title:String){
        self.title = title
        self.id = UUID()
    }
    
    static func examples() -> [Book]{
        [Book(title: "Lord of the rings"),
        Book(title: "Game of Thrones"),
        Book(title: "The Shining")]
    }
}
