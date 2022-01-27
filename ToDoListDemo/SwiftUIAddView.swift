//
//  SwiftUIAddView.swift
//  ToDoListDemo
//
//  Created by Rostadhi Akbar, M.Pd on 27/01/22.
//

import SwiftUI

struct SwiftUIAddView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack (alignment: .leading, spacing: 40){
            Text("Bikin Kerjaan Baru")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Masukin Kerjaan Barunya",
                      text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button {
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Tambah Kerjaan")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.red)
                    .cornerRadius(40)
            }
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color.brown)
    }
    
}

struct SwiftUIAddView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAddView()
            .environmentObject(RealmManager())
    }
}
