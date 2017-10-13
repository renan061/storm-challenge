//
//  Video.swift
//  StormChallenge
//
//  Created by Renan Almeida on 13/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

class Video {
    let title: String
    
    let description: String
    
    let tags: [String]
    
    let videos: [Video]
    
    var isFavorite: Bool = false
    
    init(title: String, description: String, tags: [String], videos: [Video]) {
        self.title = title
        self.description = description
        self.tags = tags
        self.videos = videos
    }
}
