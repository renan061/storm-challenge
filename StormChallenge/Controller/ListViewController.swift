//
//  ListViewController.swift
//  StormChallenge
//
//  Created by Renan Almeida on 15/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    static var repository: ContentRepository = ContentRepositoryImpl()

    private var contents = [(Article?, Video?)]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ListViewController.repository.getVideosAndArticles { articlesAndVideos in
            guard let articlesAndVideos = articlesAndVideos else {
                fatalError() // TODO: Error pop-up
            }
            let articles: [(Article?, Video?)] = articlesAndVideos.0.map { ($0, nil) }
            let videos: [(Article?, Video?)] = articlesAndVideos.1.map { (nil, $0) }
            self.contents = articles + videos
            self.tableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ArticleViewController {
            destination.article = sender as! Article
        } else if let destination = segue.destination as? VideoViewController {
            destination.video = sender as! Video
        } else {
            fatalError()
        }
    }
    
    // UITableViewController

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contents.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "content-cell", for: indexPath)
        
        let pair = self.contents[indexPath.row]
        if let article = pair.0 {
            cell.textLabel?.text = article.title
            cell.detailTextLabel?.text = ""
        } else if let video = pair.1 {
            cell.textLabel?.text = "\(video.title) \(video.isFavorite ? "*" : "")"
            cell.detailTextLabel?.text = video.description
        } else {
            fatalError()
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pair = self.contents[indexPath.row]
        if let article = pair.0 {
            performSegue(withIdentifier: "list-to-article", sender: article)
        } else if let video = pair.1 {
            performSegue(withIdentifier: "list-to-video", sender: video)
        } else {
            fatalError()
        }
    }
}
