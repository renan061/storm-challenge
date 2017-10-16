//
//  Article.swift
//  StormChallenge
//
//  Created by Renan Almeida on 13/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

class Article {
    let title: String
    enum ItemType {
        case Image
        case Text
    }
    
    let items: [(ItemType, String)] // TODO: Image as String (url) ?
    
    var isFavorite: Bool = false
    
    init(title: String, items: [(ItemType, String)]) {
        self.title = title
        self.items = items
    }
}
