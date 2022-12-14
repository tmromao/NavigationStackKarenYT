//
//  Song.swift
//  NavigationStackKarenYT
//
//  Created by Tiago Miguel de Jesus Romao on 17/11/2022.
//

import Foundation

struct Song:Identifiable, Hashable, Codable {
    
    var title: String
    var artist: String
    var year: Int
    let id: UUID
    
    init(title:String, artist: String, year: Int){
        self.title = title
        self.year = year
        self.artist = artist
        self.id = UUID()
    }
    
    static func examples() -> [Song]{
        [Song(title: "Fight the Power", artist:"Public year", year:1989),
         Song(title: "Like a Rolling Stone", artist: "Bob Dylan", year:1965),
         Song(title: "Smells Like Teen Spirit", artist:"Nirvana", year:1991)]
    }
}
