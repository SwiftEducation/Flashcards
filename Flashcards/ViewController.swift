/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var termLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let flashcard = Flashcard()
        termLabel.text = flashcard.term
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

