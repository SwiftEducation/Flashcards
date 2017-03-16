/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class SearchController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var flashcard: Flashcard?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let card = flashcard {
            let urlString = "https://google.com/search?q=apple developer \(card.term)"
            if let escapedURLString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
                if let url = URL(string: escapedURLString) {
                    let request = URLRequest(url: url)
                    webView.loadRequest(request)
                }
            }
        }
    }
    
}
