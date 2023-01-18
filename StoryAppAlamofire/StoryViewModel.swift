//
//  StoryViewModel.swift
//  StoryAppAlamofire
//
//  Created by Sena Uzun on 18.01.2023.
//

import Foundation
import Alamofire

class StoryViewModel : ObservableObject {
    
    @Published var story = [Value]()
    
    init() {
        getStories()
    }
    
    func getStories(count : Int = 1){
        
        AF.request("https://raw.githubusercontent.com/senauzun/story-app-alamofire/main/api" , method: .get)
            .responseDecodable(of:Welcome.self) { response in
                switch response.result {
                case .success(let data):
                    let value = data.value
                    self.story += value
                case .failure(let error):
                    print(error)
                    
                }
            }
        
    }
    
    
}
