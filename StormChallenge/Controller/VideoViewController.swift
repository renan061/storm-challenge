//
//  VideoViewController.swift
//  StormChallenge
//
//  Created by Renan Almeida on 15/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {
    var video: Video!
    
    @IBOutlet weak var urlLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var favoriteSwitch: UISwitch!
    @IBOutlet weak var linksTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        urlLabel.text = video.url
        titleLabel.text = video.title
        descriptionTextView.text = video.description
        descriptionTextView.sizeToFit()
        favoriteSwitch.isOn = video.isFavorite
    }
    
    @IBAction func favorite() {
        self.video.isFavorite = !self.video.isFavorite
    }
}

extension VideoViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.video.videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "video-link-cell", for: indexPath)
        let cellVideo = self.video.videos[indexPath.row]
        cell.textLabel?.text = cellVideo.title
        cell.detailTextLabel?.text = cellVideo.isFavorite ? "*" : ""
        return cell
    }
}

extension VideoViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.video = video.videos[indexPath.row]
        self.linksTableView.reloadData()
        self.viewDidLoad()
    }
}
