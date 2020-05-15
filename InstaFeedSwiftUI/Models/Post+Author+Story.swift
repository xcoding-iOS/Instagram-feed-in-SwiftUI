//
//  Post+Author+Story.swift
//  InstaFeedSwiftUI
//
//  Created by Giuseppe Sapienza on 11/5/20.
//  Copyright © 2020 Giuseppe Sapienza. All rights reserved.
//

import UIKit

struct Post {
    let description: String
    let image: UIImage
    let author: Author
}

struct Author {
    let nickname: String
    let image: UIImage
}

struct Story {
    let author: Author
    let image: UIImage
}


#if DEBUG

extension Post {
    static func mocks() -> [Post] {
        [
            Post(
                description: "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?",
                image: #imageLiteral(resourceName: "post2"),
                author: Author(nickname: "Tahlia Cuevas", image: #imageLiteral(resourceName: "author3"))),
            Post(
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                image: #imageLiteral(resourceName: "post1"),
                author: Author(nickname: "Eddie Berry", image: #imageLiteral(resourceName: "author1"))),
            Post(
                description: "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.",
                image: #imageLiteral(resourceName: "post3"),
                author: Author(nickname: "Susan Montes", image: #imageLiteral(resourceName: "author2")))
        ]
    }
}


extension Story {
    static func mocks() -> [Story] {
        [
            .init(author: Author(nickname: "Tahlia Cuevas", image: #imageLiteral(resourceName: "author3")), image:  #imageLiteral(resourceName: "post2")),
            .init(author: Author(nickname: "Eddie Berry", image: #imageLiteral(resourceName: "author1")), image:  #imageLiteral(resourceName: "post1")),
            .init(author: Author(nickname: "Susan Montes", image: #imageLiteral(resourceName: "author2")), image:  #imageLiteral(resourceName: "post3"))
        ]
    }
}

#endif
