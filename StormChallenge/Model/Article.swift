//
//  Article.swift
//  StormChallenge
//
//  Created by Renan Almeida on 13/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

class Article {
    enum ItemType {
        case Image
        case Text
    }
    
    let items: [(ItemType, String)] // TODO: Image as String (url) ?
    
    var isFavorite: Bool = false
    
    init(items: [(ItemType, String)]) {
        self.items = items
    }
}
