//
//  MovieDetailView.swift
//  NavigationStackKarenYT
//
//  Created by Tiago Miguel de Jesus Romao on 17/11/2022.
//

import SwiftUI

struct MovieDetailView: View {
    
    let movie:Movie
    
    var body: some View {
        VStack {
            Text("Movie detail view")
        }
        .navigationTitle(movie.title)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie(title: "Avatar"))
    }
}
