/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class TermController: UIViewController {

    @IBOutlet weak var termLabel: UILabel!
    let deck = Deck()
    var flashcard: Flashcard?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let flashcard = deck.randomCard {
            self.flashcard = flashcard
            termLabel.text = flashcard.term
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let definitionController = segue.destination as? DefinitionController {
            definitionController.flashcard = flashcard
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

