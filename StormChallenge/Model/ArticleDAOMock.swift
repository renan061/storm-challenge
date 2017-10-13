//
//  ArticleDAOMock.swift
//  StormChallenge
//
//  Created by Renan Almeida on 13/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

class ArticleDAOMock: ArticleDAO {
    static func getArticles(callback: ([Article]?) -> ()) {
        callback([
            Article(items: [
                (Article.ItemType.Text, "TODO: Text 1"),
                (Article.ItemType.Image, "TODO: Url 1"),
                (Article.ItemType.Text, "TODO: Text 1")
            ]),
            Article(items: [
                (Article.ItemType.Text, "TODO: Text 2"),
                (Article.ItemType.Image, "TODO: Url 2"),
                (Article.ItemType.Text, "TODO: Text 2")
            ])
        ])
    }
}
