//
//  SwiftUIAddButtonView.swift
//  ToDoListDemo
//
//  Created by Rostadhi Akbar, M.Pd on 27/01/22.
//

import SwiftUI

struct SwiftUIAddButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 45)
                .foregroundColor(Color.gray)
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .frame(height: 45)
    }
}

struct SwiftUIAddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAddButtonView()
    }
}
