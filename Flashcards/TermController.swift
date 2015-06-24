/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class TermController: UIViewController {

    @IBOutlet weak var termLabel: UILabel!
    let deck = Deck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let flashcard = deck.randomCard {
            termLabel.text = flashcard.term
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

