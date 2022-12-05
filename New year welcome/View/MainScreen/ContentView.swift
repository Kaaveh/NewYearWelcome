//
//  ContentView.swift
//  New year welcome
//
//  Created by Kaaveh Mohamedi on 12/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        VStack {
            Text("Send a New Year Message to you friends!")
                .font(.title)
                .multilineTextAlignment(.center)
            HStack {
                TextField("message", text: $viewModel.message)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    viewModel.clear()
                }, label: {
                    Image(systemName: "plus.circle")
                        .rotationEffect(.degrees(45))
                })
            }.padding()
            EmojiView(viewModel: viewModel)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
