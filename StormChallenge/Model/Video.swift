//
//  Video.swift
//  StormChallenge
//
//  Created by Renan Almeida on 13/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

// Struct to avoid circular pointer references and ARC problems
struct Video {
    let url: String

    let title: String
    
    let description: String
    
    let tags: [String]
    
    private(set) var videos = [Video]()
    
    var isFavorite: Bool = false
    
    init(url: String, title: String, description: String, tags: [String]) {
        self.url = url
        self.title = title
        self.description = description
        self.tags = tags
    }
    
    mutating func link(video: Video) {
        self.videos.append(video)
    }
    
    mutating func link(videos: [Video]) {
        self.videos.append(contentsOf: videos)
    }
}
