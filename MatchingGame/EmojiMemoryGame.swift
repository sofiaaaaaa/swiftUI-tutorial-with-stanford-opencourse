//
//  EmojiMemoryGame.swift
//  MatchingGameTutorial
//
//  Created by punky on 2021/02/17.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
//    private(set) var model: MemoryGame<String>
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🐥", "🐹", "🙈"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
//    var objectWillChange: ObservableObjectPublisher
    
    //MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }

    //MARK: - Intent(s)
    func choose(card: MemoryGame<String>
                .Card) {
//        objectWillChange.send()
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
