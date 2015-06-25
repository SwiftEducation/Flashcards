/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class DefinitionController: UIViewController {

    @IBOutlet weak var definition: UITextView!
    var flashcard: Flashcard?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let card = flashcard {
            definition.text = card.definition
        }
    }
    
}