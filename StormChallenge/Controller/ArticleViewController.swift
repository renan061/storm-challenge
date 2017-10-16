//
//  ArticleViewController.swift
//  StormChallenge
//
//  Created by Renan Almeida on 15/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

import UIKit

class ArticleViewController: UITableViewController {
    var article: Article!
    
    // UITableViewController
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.article.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "article-item-cell", for: indexPath)
        
        let item = article.items[indexPath.row]
        switch item.0 {
        case Article.ItemType.Image:
            // TODO: UIImage
            cell.textLabel?.text = item.1
        case Article.ItemType.Text:
            cell.textLabel?.text = item.1
        }
        
        return cell
    }
}
