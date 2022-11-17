//
//  ModelDataManager.swift
//  NavigationStackKarenYT
//
//  Created by Tiago Miguel de Jesus Romao on 17/11/2022.
//

import Foundation

class ModelDataManager: ObservableObject {
    
    @Published var books = Book.examples()
    @Published var songs = Song.examples()
    @Published var movies = Movie.examples()
}
