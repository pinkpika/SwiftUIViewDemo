//
//  DepartmentListView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/23.
//

import SwiftUI

struct Department: Identifiable {
    let id = UUID()
    var name: String
    var staff: [Person]
}

struct Person: Identifiable {
    let id = UUID()
    var name: String
}

struct DepartmentListView: View {
    let departments: [Department] =  [
        Department(name: "aaa", staff: [
            Person(name: "a1"),
            Person(name: "a2")]),
        Department(name: "bbb", staff: [
            Person(name: "b1")]),
        Department(name: "ccc", staff: [
            Person(name: "c1"),
            Person(name: "c2"),
            Person(name: "c3")])
    ]
    var body: some View {
        List{
            ForEach(departments){
                department in
                Section(header: Text(department.name)) {
                    ForEach(department.staff) { staff in
                        Text(staff.name)
                    }
                }
            }
        }.listStyle(SidebarListStyle())
    }
}

struct DepartmentListView_Previews: PreviewProvider {
    static var previews: some View {
        DepartmentListView()
    }
}
