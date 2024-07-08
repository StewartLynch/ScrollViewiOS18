//
// ----------------------------------------------
// Original project: ScrollViewiOS18
// by  Stewart Lynch on 2024-07-08
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

struct CarouselView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing:0) {
                ForEach(AppData.myImages) { carouselImage in
                    VStack {
                        Image(carouselImage.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(radius: 10)
                            .padding()
                        Text(carouselImage.imageTitle)
                    }
                }
                .containerRelativeFrame(.horizontal)
            }
        }
        .scrollTargetBehavior(.paging)
    }
}

#Preview {
    CarouselView()
}
