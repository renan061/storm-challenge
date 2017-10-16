//
//  ArticleViewController.swift
//  StormChallenge
//
//  Created by Renan Almeida on 15/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {
    var article: Article!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(article.items.first!.0)
    }
}
