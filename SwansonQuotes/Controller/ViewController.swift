//
//  RonSwansonVC.swift
//  SwansonQuotes
//
//  Created by Randy Varela on 3/25/25.
//

import UIKit

class ViewController: UIViewController {
    
    let quotesManager = QuotesManager()
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func quoteBtnPressed(_ sender: Any) {
        
        //quoteLabel.text = "I am Ron Swanson, you may know me from the show Parks and Recs"
        
        quotesManager.performRequest(urlString: quotesManager.quotesURL) { [weak self] quote, error in
            DispatchQueue.main.async {
                if let quote = quote {
                    self?.quoteLabel.text = quote.quotes.first
                } else if let error = error {
                    self?.quoteLabel.text = "Error: \(error.localizedDescription)"
                } else {
                    self?.quoteLabel.text = "No quotes found"
                }
            }
        }
    }
}

