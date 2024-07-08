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

struct StartTabView: View {
    var body: some View {
        TabView {
            ScrollPositionTabView()
                .tabItem {
                    Label("Position", systemImage: "1.circle.fill")
                }
            ScrollGeometryChangeTab()
                .tabItem {
                    Label("GeometryChange", systemImage: "2.circle.fill")
                }
            ScrollGeometryPhaseTab()
                .tabItem {
                    Label("GeometryPhase", systemImage: "3.circle.fill")
                }
            ScrollVisibilityTab()
                .tabItem {
                    Label("Visibility", systemImage: "4.circle.fill")
                }
            CarouselView()
                .tabItem {
                    Label("CarouselView", systemImage: "5.circle.fill")
                }
        }
    }
}

#Preview {
    StartTabView()
}
