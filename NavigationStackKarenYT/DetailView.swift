//
//  DetailView.swift
//  NavigationStackKarenYT
//
//  Created by Tiago Miguel de Jesus Romao on 17/11/2022.
//

import SwiftUI

struct DetailView: View {
    
    let text: String
    
    var body: some View {
        VStack {
            Text("Detail view showing")
            Text(text)
            
            Divider()
            
            NavigationLink("Link to 3", value:3)
            NavigationLink("Link to C", value: "CCCC")
        }
        .navigationTitle(text)
    }
        
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(text: "Texto")
    }
}
