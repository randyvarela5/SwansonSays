//
//  ViewConfig.swift
//  SwansonQuotes
//
//  Created by Randy Varela on 4/7/25.
//

import Foundation
import UIKit

extension ViewController {
    

    
    func configUI() {
        configureQuoteLabel()
        configureButton()
    }
    
    private func configureQuoteLabel() {
        let hexCodeBrown = UIColor (
            red: 53/255.0,
            green: 43/255.0,
            blue: 29/255.0,
            alpha: 1.0
        )
        
        quoteLabel.layer.cornerRadius = 10.0
        quoteLabel.clipsToBounds = true
        quoteLabel.layer.borderWidth = 3
        quoteLabel.layer.borderColor = hexCodeBrown.cgColor
    }
    
    private func configureButton() {
        let hexCodeBrown = UIColor (
            red: 53/255.0,
            green: 43/255.0,
            blue: 29/255.0,
            alpha: 1.0
        )
        
        quoteBtn.layer.borderWidth = 3
        quoteBtn.layer.cornerRadius = 10.0
        quoteBtn.clipsToBounds = true
        quoteBtn.layer.borderColor = hexCodeBrown.cgColor
        quoteBtn.titleLabel?.font = UIFont(name: "AmericanTypewriter-Bold", size: 25)
    }
}
