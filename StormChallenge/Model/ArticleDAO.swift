//
//  ArticleDAO.swift
//  StormChallenge
//
//  Created by Renan Almeida on 13/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

protocol ArticleDAO {
    func getArticles(callback: ([Article]?) -> ())
}

class ArticleDAOImpl: ArticleDAO {
    func getArticles(callback: ([Article]?) -> ()) {
        // Here is where I would program the real ArticleDAO
        // Since this is only a demo, look at the mocks group
        callback(nil)
    }
}
