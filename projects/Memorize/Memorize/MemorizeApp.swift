//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 彭智鑫 on 2021/4/17.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
