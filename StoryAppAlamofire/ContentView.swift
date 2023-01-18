//
//  ContentView.swift
//  StoryAppAlamofire
//
//  Created by Sena Uzun on 18.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var storyVM = StoryViewModel()
    
    var body: some View {
        
        NavigationView {
            List(storyVM.story) { element in
                
                Text(element.story)
                
            }.navigationTitle(Text("Story App"))
            
                .toolbar {
                    Button(action: addStory) {
                        Text("Get New Story!")
                    }
                }
        }
    }
    
    func addStory(){
        storyVM.getStories(count: 1)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
