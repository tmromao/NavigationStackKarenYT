//
//  ContentView.swift
//  NavigationStackKarenYT
//
//  Created by Tiago Miguel de Jesus Romao on 17/11/2022.
//

import SwiftUI

struct FirstTabView: View {
    
    @State private var showSettings = false
    @State private var path = NavigationPath()
    //@SceneStorage("path") private var path = NavigationPath()
    
    var body: some View {
        VStack {
            NavigationStack(path: $path) {
                List {
                    
                    NavigationLink("Go to detail A", value: "Show AAA")
                    
                    NavigationLink("Go to detail B", value: "Show BBB")
                    
                    NavigationLink("Go to number 1", value: 1)
                    
                    Button{
                        showSettings.toggle()
                    } label: {
                        Text("Settings")
                    }
                    
                    Section("Old"){
                        NavigationLink("Old link with destination"){
                            VStack {
                                Text("Old navigation link")
    //                            NavigationLink("Go to 2", value:2)
                            }
                        }
                    }
                    
                }
                .navigationDestination(for: String.self){ textValue in
                    DetailView(text:textValue)
                }
                .navigationDestination(for: Int.self) { numberValue in
                    Text("Detail with \(numberValue)")
                }
                
                .navigationDestination(isPresented: $showSettings) {
                    Text("Settings")
                }
                
                .navigationTitle("Root view")
                
            }
            
            VStack{
                
                Text("Path")
                // Indica o numero de views no "Stack"
                Text("Number of views :-> \(path.count)")
                
                Button{
                    path.removeLast()
                } label: {
                    Text("Go back one view")
                }
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
