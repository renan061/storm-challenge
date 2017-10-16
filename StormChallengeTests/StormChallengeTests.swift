//
//  StormChallengeTests.swift
//  StormChallengeTests
//
//  Created by Renan Almeida on 13/10/17.
//  Copyright © 2017 Renan Almeida. All rights reserved.
//

import XCTest
@testable import StormChallenge

class StormChallengeTests: XCTestCase {
    let dao: VideoDAO = VideoDAOMock()

    func testVideoLinks() {
        dao.getVideos { videos in
            XCTAssertNotNil(videos)
            let videos = videos!
            XCTAssertEqual(videos.count, 4)
            XCTAssertEqual(videos[0].videos.count, 0)
            XCTAssertEqual(videos[1].videos.count, 1)
            XCTAssertEqual(videos[2].videos.count, 2)
            XCTAssertEqual(videos[3].videos.count, 2)
            XCTAssertEqual(videos[1].videos.first!.title, videos[0].title)
            XCTAssertEqual(videos[2].videos.first!.title, videos[0].title)
            XCTAssertEqual(videos[2].videos[1].title, videos[3].title)
            XCTAssertEqual(videos[3].videos.first!.title, videos[0].title)
            XCTAssertEqual(videos[3].videos[1].title, videos[2].title)
        }
    }
}
