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

struct ScrollPositionTabView: View {
    @State private var colorIndex = 0
    @State private var scrollPosition = ScrollPosition()
    var body: some View {
        NavigationStack{
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
            .scrollPosition($scrollPosition)
            .defaultScrollAnchor(.bottom)
            .animation(.default, value: scrollPosition)
            .padding()
            .navigationTitle("ScrollPosition")
            .toolbar {
                HStack {
                    Button("Top Scroll Position", systemImage: "arrowshape.up.fill") {
                        scrollPosition.scrollTo(edge: .top)
                    }
                    Button("Random Scroll Position", systemImage: "questionmark.square.fill") {
//                        scrollPosition.scrollTo(id: AppData.myColors[3])
                        if let randomColor = AppData.myColors.randomElement() {
                            scrollPosition.scrollTo(id: randomColor)
                            print(String(describing: randomColor))
                        }
                    }
                    Button("Bottom Scroll Position", systemImage: "arrowshape.down.fill") {
                        scrollPosition.scrollTo(edge: .bottom)
                    }
                    Picker(selection: $colorIndex) {
                        ForEach(0..<AppData.myColors.count, id: \.self) { index in
                            Text("\(index)").tag(index)
                        }
                    } label: {
                        Text("")
                    }
                    .onChange(of: colorIndex) {
                        scrollPosition.scrollTo(y: CGFloat(310 * colorIndex))
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollPositionTabView()
}
