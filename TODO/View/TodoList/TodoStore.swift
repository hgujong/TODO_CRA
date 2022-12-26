//
//  TodoStore.swift
//  TODO
//
//  Created by junhyeok KANG on 2022/12/26.
//

import SwiftUI
import Combine

class TodoStore: ObservableObject{
    @Published var todos = [Todo]()
    private let todosKey = "TodoListKey"

    func addNew(_ newTodo:String, _ important:Bool){
        guard !newTodo.isEmpty else { return }
        if important{
            self.todos.insert(Todo(todoItem: newTodo, important: important), at: 0)
        }else{
            self.todos.append(Todo(todoItem: newTodo, important: important))
        }
        saveTodos()
    }
    
    func modifyTodoDone(_ id:UUID){
        for i in todos.indices {
            if (todos[i].id==id){
                let newDone:Bool = todos[i].done ? false : true
                let modifiedTodo = Todo(id: todos[i].id, todoItem: todos[i].todoItem, important: todos[i].important, done: newDone)
                todos.replaceSubrange(i...i, with: repeatElement(modifiedTodo, count: 1))
                break
            }
        }
        saveTodos()
    }
    
    func move(from source: IndexSet, to destination: Int){
        self.todos.move(fromOffsets: source, toOffset: destination)
    }

    func delete(at offests: IndexSet){
        self.todos.remove(atOffsets: offests)
        saveTodos()
    }
    
    // MARK:- Store TodoList data using UserDefaults
    func saveTodos() {
      UserDefaults.standard.set(try? PropertyListEncoder().encode(self.todos), forKey: todosKey)
    }
     
    func loadTodos() {
      if let todoData = UserDefaults.standard.value(forKey: todosKey) as? Data {
        if let todoList = try? PropertyListDecoder().decode(Array<Todo>.self, from: todoData) {
          self.todos = todoList
        }
      }
    }
}
