//
//  MainViewModel.swift
//  New year welcome
//
//  Created by Kaaveh Mohamedi on 12/5/22.
//

import Foundation

class MainViewModel: ObservableObject {
    
    let emojis = [["😇", "🙂", "🤬", "🤘🏻", "🍀"],["🤯","🥱", "🤔", "👋🏻", "🤝"],["🌹", "⚠️", "🙏🏻", "❤️", "🤦🏻‍♂️"]]
    @Published var message: String = ""
    
    func clear() {
        message = ""
    }
    
    func add(text: String) {
        message.append(text)
    }
    
}
