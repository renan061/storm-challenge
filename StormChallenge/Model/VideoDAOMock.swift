//
//  VideoDAOMock.swift
//  StormChallenge
//
//  Created by Renan Almeida on 13/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

class VideoDAOMock: VideoDAO {
    static func getVideos(callback: ([Video]?) -> ()) {
        var videos = [
            // Wuba Duba Lub Lub
            Video(
                url: "https://www.youtube.com/watch?v=jlMQVcWI7HA",
                title: "Wuba Duba Lub Lub",
                description: "Nothing else to say, really... Just Wuba de Duba Lub Lub...",
                tags: ["wuba", "duba", "lub"]
            ),
            // Pickle Rick
            Video(
                url: "https://www.youtube.com/watch?v=tZp8sY06Qoc",
                title: "Pickle Rick",
                description: "\"I turned myself into a pickle, Morty! I'm PICKLEE RIIIIIIICK!!!\"",
                tags: ["pickle-rick", "rick", "pickle"]
            ),
            // Evil Morty 1
            Video(
                url: "https://www.youtube.com/watch?v=XZtfRHkjoYU",
                title: "Evil Morty",
                description: "Just listen to this soundtrack...",
                tags: ["evil", "morty", "soundtrack"]
            ),
            // Evil Morty 2
            Video(
                url: "https://www.youtube.com/watch?v=duJKvDndclQ",
                title: "The Ricklantis Mixup",
                description: "Potential spoilers... But listen to that soundtrack...",
                tags: ["evil", "morty", "soundtrack"]
            )
        ]
        
        videos[1].link(video: videos[0])
        videos[2].link(video: videos[0])
        videos[2].link(video: videos[3])
        videos[3].link(video: videos[0])
        videos[3].link(video: videos[2])
        
        callback(videos)
    }
}

