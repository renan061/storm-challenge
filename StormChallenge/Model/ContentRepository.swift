//
//  ContentRepository.swift
//  StormChallenge
//
//  Created by Renan Almeida on 15/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

// Protocol to allow model layer mocks and facilitate testing
protocol ContentRepository {
    func getVideosAndArticles(callback: (([Article], [Video])?) -> ())
}

class ContentRepositoryImpl: ContentRepository {
    private let articleDAO: ArticleDAO = ArticleDAOMock()

    private let videoDAO: VideoDAO = VideoDAOMock()
    
    // I know nested callbacks are harmful (hell), but this is a simple demo
    // Ideally I would use promises
    func getVideosAndArticles(callback: (([Article], [Video])?) -> ()) {
        articleDAO.getArticles { articles in
            guard let articles = articles else {
                callback(nil)
                return
            }
            videoDAO.getVideos { videos in
                guard let videos = videos else {
                    callback(nil)
                    return
                }
                callback((articles, videos))
            }
        }
    }
}
