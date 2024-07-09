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

struct ScrollData: Equatable {
    let bounds: CGRect
    let containerSize: CGSize
    let contentInsets: EdgeInsets
    let contentOffset: CGPoint
    let contentSize: CGSize
    let visibleRect: CGRect
    init(
        bounds: CGRect = .zero,
        containerSize: CGSize = .zero,
        contentInsets: EdgeInsets = .init(),
        contentOffset: CGPoint = .zero,
        contentSize: CGSize = .zero,
        visibleRect: CGRect = .zero
    ) {
        self.bounds = bounds
        self.containerSize = containerSize
        self.contentInsets = contentInsets
        self.contentOffset = contentOffset
        self.contentSize = contentSize
        self.visibleRect = visibleRect
    }
}

struct ScrollGeometryChangeTab: View {
    @State private var scrollData = ScrollData()
    var body: some View {
        NavigationStack{
            Text("\(scrollData.contentSize.width)")
            ScrollView {
                VStack(spacing: 10){
                    ForEach(AppData.myColors, id: \.self) { color in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(color)
                            .frame(height: 300)
                            .overlay {
                                Text(String(describing: color))
                                    .font(.largeTitle)
                                    .foregroundStyle(.white)
                            }
                    }
                }
            }
            .onScrollGeometryChange(
                for: ScrollData.self,
                of: { geometry in
                    ScrollData(
                        bounds: geometry.bounds,
                        containerSize: geometry.containerSize,
                        contentInsets: geometry.contentInsets,
                        contentOffset: geometry.contentOffset,
                        contentSize: geometry.contentSize,
                        visibleRect: geometry.visibleRect
                    )
                },
                action: { oldValue, newValue in
                    scrollData = newValue
            })
            .padding()
            .navigationTitle("ScrollGeometry")
        }
    }
}

#Preview {
    ScrollGeometryChangeTab()
}
