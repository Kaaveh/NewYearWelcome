//
//  EmojiView.swift
//  New year welcome
//
//  Created by Kaaveh Mohamedi on 12/5/22.
//

import SwiftUI

struct EmojiView: View {
    
    @ObservedObject var viewModel: MainViewModel
    
    var body: some View {
        VStack {
            ForEach(viewModel.emojis, id: \.self) { emojiRow in
                HStack {
                    ForEach(emojiRow, id: \.self) { emoji in
                        Text(emoji)
                            .frame(maxWidth: 50, maxHeight: 50)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                viewModel.add(text: emoji)
                            }
                    }
                }
            }
        }
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(viewModel: MainViewModel())
    }
}
