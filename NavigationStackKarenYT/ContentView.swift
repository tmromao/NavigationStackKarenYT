//
//  ContentView.swift
//  NavigationStackKarenYT
//
//  Created by Tiago Miguel de Jesus Romao on 17/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FirstTabView()
                .tabItem{
                    Label("First", systemImage: "plus")
                }
            
            SecondTabView()
                .tabItem{
                    Label("Second", systemImage: "face.smiling")
                }
            
            ThirdTabView()
                .tabItem{
                    Label("Third", systemImage: "doc.richtext")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
