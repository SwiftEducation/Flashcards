/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class SearchController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var flashcard: Flashcard?
    let baseSearchURL = "http://google.com/search?q=apple developer"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let card = flashcard,
            escapedURLString = searchURLString(baseSearchURL, term: card.term),
            url = NSURL(string: escapedURLString) {
                webView.loadRequest(NSURLRequest(URL: url))
        }
    }
    
    private func searchURLString(base: String, term: String) -> String? {
        return "\(baseSearchURL) \(term)"
            .stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())
    }

}
