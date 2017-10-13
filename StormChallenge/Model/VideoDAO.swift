//
//  VideoDAO.swift
//  StormChallenge
//
//  Created by Renan Almeida on 13/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

protocol VideoDAO {
    static func getVideos(callback: ([Video]?) -> ())
}

class VideoDAOImpl: VideoDAO {
    static func getVideos(callback: ([Video]?) -> ()) {
        // Here is where I would program the real VideoDAO
        // Since this is only a demo, look at the mocks group
        callback(nil)
    }
}
