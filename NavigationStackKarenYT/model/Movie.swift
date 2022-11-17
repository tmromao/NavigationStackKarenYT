//
//  Movie.swift
//  NavigationStackKarenYT
//
//  Created by Tiago Miguel de Jesus Romao on 17/11/2022.
//

import Foundation

struct Movie:Identifiable, Hashable, Codable {
    
    var title: String
    let id: UUID
    
    init(title:String){
        self.title = title
        self.id = UUID()
    }
    
    static func examples() -> [Movie]{
        [Movie(title: "Titanic"),
        Movie(title: "Avatar"),
        Movie(title: "Lord of the Ring")]
    }
}

