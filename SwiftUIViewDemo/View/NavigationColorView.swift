//
//  NavigationColorView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/23.
//

import SwiftUI

struct ColorDetail: View {
    var color: Color
    var body: some View {
        color
            .frame(width: 200, height: 200)
            .navigationTitle(color.description.capitalized)
    }
}
struct NavigationColorView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Purple", destination: ColorDetail(color: .purple))
                NavigationLink("Pink", destination: ColorDetail(color: .pink))
                NavigationLink("Orange", destination: ColorDetail(color: .orange))
            }
            .navigationTitle("Colors")
            Text("Select a Color") // A placeholder to show before selection.
        }
    }
}

struct NavigationColorView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationColorView()
    }
}
