//
//  SwiftUIRowView.swift
//  ToDoListDemo
//
//  Created by Rostadhi Akbar, M.Pd on 27/01/22.
//

import SwiftUI

struct SwiftUIRowView: View {
    var tugas: String
    var kelar: Bool
    var body: some View {
        HStack (spacing: 30){
            Image(systemName: kelar ?
                  "checkmark.circle" : "circle")
            Text(tugas)
        }
    }
}

struct SwiftUIRowView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIRowView(tugas: "latian golf", kelar: true)
    }
}
