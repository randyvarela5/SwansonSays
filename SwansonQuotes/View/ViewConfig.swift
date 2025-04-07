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
        configureImageView()
        configureQuoteLabel()
        configureButton()
    }
    
    private func configureImageView() {
        //Transform into circle
        ronImage.layer.cornerRadius = ronImage.frame.width / 2
        ronImage.clipsToBounds = true
        // apply border
        ronImage.layer.borderWidth = 5
        ronImage.layer.borderColor = UIColor.black.cgColor
    }
    
    private func configureQuoteLabel() {
        quoteLabel.layer.cornerRadius = 10.0
        quoteLabel.clipsToBounds = true
        quoteLabel.layer.borderWidth = 5
        quoteLabel.layer.borderColor = UIColor.black.cgColor
    }
    
    private func configureButton() {
        quoteBtn.layer.cornerRadius = 10.0
    }
}
