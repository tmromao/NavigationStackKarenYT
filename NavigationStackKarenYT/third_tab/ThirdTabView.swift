//
//  ThirdTabView.swift
//  NavigationStackKarenYT
//
//  Created by Tiago Miguel de Jesus Romao on 17/11/2022.
//

import SwiftUI



struct ThirdTabView: View {
    
    @StateObject var modelDataManager = ModelDataManager()
    @StateObject var navigationStateManager = NavigationStateManager()
    
    @SceneStorage("navigationState") var navigationStateData: Data?
    
    var body: some View {
        
        NavigationStack(path: $navigationStateManager.selectionPath){
            
            RootView(modelData: modelDataManager)
            
                .navigationDestination(for: SelectionState.self) { state in
                    
                        switch state {
                            case .song(let song):
                                SongDetailView(song: song)
                            case .movie(let movie):
                                MovieDetailView(movie: movie)
                            case .book(let book):
                                BookDetailView(book: book)
                            case .settings:
                                SettingsView()
                        }
                    
                }
        }
        .environmentObject(modelDataManager)
        .environmentObject(navigationStateManager)
        .environment(\.colorScheme, .dark)
//COMBINE WAY!
        //.task {
//
//            // reset during launch
//            navigationStateManager.data = navigationStateData
//
//            // Save state to user defaults
//            for await _ in navigationStateManager.objectWillChangeSequence{
//                navigationStateData = navigationStateManager.data
//            }
//        }
       
        // Alternativa ao Combine (.task). Manter os userDefaults
        .onReceive(navigationStateManager.objectWillChange.dropFirst()) { _ in
            // Save state to user defaults
            navigationStateData = navigationStateManager.data
        }
        .onAppear{
            // Reset during launch
            navigationStateManager.data = navigationStateData
        }
    }
}

struct ThirdTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTabView()
    }
}
