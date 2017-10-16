//
//  ArticleDAOMock.swift
//  StormChallenge
//
//  Created by Renan Almeida on 13/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

class ArticleDAOMock: ArticleDAO {
    func getArticles(callback: ([Article]?) -> ()) {
        callback([
            Article(title: "Artigo 1", items: [
                (Article.ItemType.Text, "TODO: Text 1"),
                (Article.ItemType.Image, "TODO: Url 1"),
                (Article.ItemType.Text, "TODO: Text 1")
            ]),
            Article(title: "Artigo 2", items: [
                (Article.ItemType.Text, "TODO: Text 2"),
                (Article.ItemType.Image, "TODO: Url 2"),
                (Article.ItemType.Text, "TODO: Text 2"),
                (Article.ItemType.Text, "TODO: Text 3"),
                (Article.ItemType.Text, "TODO: Text 4"),
                (Article.ItemType.Text, "TODO: Text 5"),
                (Article.ItemType.Text, "TODO: Text 6"),
                (Article.ItemType.Text, "TODO: Text 7"),
                (Article.ItemType.Text, "TODO: Text 8"),
                (Article.ItemType.Text, "TODO: Text 9"),
                (Article.ItemType.Text, "TODO: Text 10"),
                (Article.ItemType.Text, "TODO: Text 11"),
                (Article.ItemType.Text, "TODO: Text 12"),
                (Article.ItemType.Text, "TODO: Text 13"),
                (Article.ItemType.Text, "TODO: Text 14"),
                (Article.ItemType.Text, "TODO: Text 15"),
                (Article.ItemType.Text, "TODO: Text 16"),
                (Article.ItemType.Text, "TODO: Text 17"),
                (Article.ItemType.Text, "TODO: Text 18")
            ])
        ])
    }
}
