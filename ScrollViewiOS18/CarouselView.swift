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
    @State private var imagesOnScreen: [CarouselImage] = []
    @State private var scrollPosition = ScrollPosition()
    var body: some View {
        VStack{
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
                        .id(carouselImage)
                    }
                    .containerRelativeFrame(.horizontal)
                }
                .scrollTargetLayout()
            }
            HStack {
                ForEach(AppData.myImages) { image in
                Circle()
                        .fill(imagesOnScreen.contains(image) ? .secondary : .primary)
                        .frame(width: imagesOnScreen.contains(image) ? 20 : 10)
                        .onTapGesture {
                            withAnimation {
                                scrollPosition.scrollTo(id: image)
                            }
                        }
                }
            }
            .padding(5)
            .background(.thickMaterial, in: Capsule())
            .animation(.default, value: imagesOnScreen)
        }
        .scrollPosition($scrollPosition)
        .scrollTargetBehavior(.paging)
        .onScrollTargetVisibilityChange(idType: CarouselImage.self) { carouselImages in
            imagesOnScreen = carouselImages
            print(imagesOnScreen)
        }
    }
}

#Preview {
    CarouselView()
}
