/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class Flashcard {
    
    let term: String
    let definition: String
    
    init(term: String, definition: String) {
        self.term = term
        self.definition = definition
    }
    
    convenience init() {
        self.init(term: "Default term", definition: "Default definition.")
    }
    
}