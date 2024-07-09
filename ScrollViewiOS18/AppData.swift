//
// ----------------------------------------------
// Original project: ScrollViewiOS18
// by  Stewart Lynch on 2024-07-07
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
// ----------------------------------------------
// Copyright © 2024 CreaTECH Solutions. All rights reserved.

import SwiftUI

struct CarouselImage: Identifiable, Hashable {
    let id: Int
    let imageName: String
    let imageTitle: String
}

enum AppData {
    static var myColors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink, .black, .brown, .mint, .teal, .gray]
    
    static var myImages: [CarouselImage] {
        [
            .init(id: 1, imageName: "hibiscus", imageTitle: "Hibiscus Plant"),
            .init(id: 2, imageName: "highlands", imageTitle: "Scottish Highlands"),
            .init(id: 3, imageName: "kelpies", imageTitle: "Falkirk Kelpies"),
            .init(id: 4, imageName: "lahaina", imageTitle: "Lahaina Harbour Sunset"),
            .init(id: 5, imageName: "memorial", imageTitle: "Memorial to the Murdered Jews of Europe"),
            .init(id: 6, imageName: "snail", imageTitle: "Kihei Snail"),
            .init(id: 7, imageName: "surf", imageTitle: "Makena Beach"),
            .init(id: 8, imageName: "waterpool", imageTitle: "I have seen the light")
        ]
        
    }
}
