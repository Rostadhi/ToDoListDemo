//
//  Task.swift
//  ToDoListDemo
//
//  Created by Rostadhi Akbar, M.Pd on 27/01/22.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable{
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
