/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class Deck {
    
    private let cards: [Flashcard]

    var randomCard: Flashcard? {
        if cards.isEmpty {
            return nil
        } else {
            return cards[Int(arc4random_uniform(UInt32(cards.count)))]
        }
    }
    
    init() {
        let cardData = [
            "controller outlet" : "A controller view property, marked with IBOutlet",
            "controller action" : "A controller method, marked with IBAction, that is triggered by an interface event."
        ]
        cards = cardData.map { Flashcard(term: $0, definition: $1) }
    }
    
}