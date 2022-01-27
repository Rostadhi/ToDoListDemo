//
//  ContentView.swift
//  ToDoListDemo
//
//  Created by Rostadhi Akbar, M.Pd on 27/01/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            SwiftUIView()
                .environmentObject(realmManager)
            SwiftUIAddButtonView()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView){
            SwiftUIAddView()
                .environmentObject(realmManager)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color.brown)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
