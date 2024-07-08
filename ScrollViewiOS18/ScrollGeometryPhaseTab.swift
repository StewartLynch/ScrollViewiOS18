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

struct ScrollGeometryPhaseTab: View {
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
            .padding()
            .navigationTitle("Scroll Phase")
        }
    }
}

#Preview {
    ScrollGeometryPhaseTab()
}
