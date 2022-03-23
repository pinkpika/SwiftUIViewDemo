//
//  OutlineGroupView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/23.
//

import SwiftUI

struct FileItem: Hashable, Identifiable, CustomStringConvertible {
    var id: Self { self }
    var name: String
    var children: [FileItem]? = nil
    var description: String {
        switch children {
        case nil:
            return "📄 \(name)"
        case .some(let children):
            return children.isEmpty ? "📂 \(name)" : "📁 \(name)"
        }
    }
}

struct OutlineGroupView: View {
    
    let data = FileItem(name: "users", children:
                            [FileItem(name: "user1234", children:
                                        [FileItem(name: "Photos", children:
                                                    [FileItem(name: "photo001.jpg"),
                                                     FileItem(name: "photo002.jpg")]),
                                         FileItem(name: "Movies", children:
                                                    [FileItem(name: "movie001.mp4")]),
                                         FileItem(name: "Documents", children: [])
                                        ]),
                             FileItem(name: "newuser", children:
                                        [FileItem(name: "Documents", children: [])
                                        ])
                            ])
    
    var body: some View {
        OutlineGroup(data, children: \.children) { item in
            Text("\(item.description)")
        }
    }
}

struct OutlineGroupView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineGroupView()
    }
}
