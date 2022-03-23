//
//  TabSystemView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/23.
//

import SwiftUI

struct TabSystemView: View {
    var body: some View {
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

struct TabSystemView_Previews: PreviewProvider {
    static var previews: some View {
        TabSystemView()
    }
}
