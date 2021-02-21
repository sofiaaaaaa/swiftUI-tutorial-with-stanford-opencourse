//
//  MatchingGameApp.swift
//  MatchingGame
//
//  Created by punky on 2021/02/20.
//

import SwiftUI

@main
struct MatchingGameApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
