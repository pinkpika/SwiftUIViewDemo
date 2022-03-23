//
//  GroupTextView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/23.
//

import SwiftUI

struct GroupTextView: View {
    var body: some View {
        VStack {
            Group {
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Text("5")
                Text("6")
                Text("7")
                Text("8")
                Text("9")
                Text("10")
            }.foregroundColor(.yellow)
            
        }
    }
}

struct GroupTextView_Previews: PreviewProvider {
    static var previews: some View {
        GroupTextView()
    }
}
