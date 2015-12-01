/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class Deck {
    
    private let cards: [Flashcard]
    
    init() {
        let cardData = [
            "controller outlet" : "A controller view property, marked with IBOutlet",
            "controller action" : "A controller method, marked with IBAction, that is triggered by an interface event."
        ]
        cards = cardData.map { Flashcard(term: $0, definition: $1) }
    }
    
}