/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class SearchController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var flashcard: Flashcard?
    let baseSearchURL = "https://google.com/search?q=apple developer"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let card = flashcard,
            let escapedURLString = searchURLString(baseSearchURL, term: card.term),
            let url = URL(string: escapedURLString) {
                webView.loadRequest(URLRequest(url: url))
        }
    }
    
    fileprivate func searchURLString(_ base: String, term: String) -> String? {
        return "\(baseSearchURL) \(term)"
            .addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    }

}
