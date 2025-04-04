//
//  QuotesModel.swift
//  SwansonQuotes
//
//  Created by Randy Varela on 3/25/25.
//

import Foundation


struct QuotesModel: Decodable {
    
    let quotes: [String]
    
    init(quotes: [String]) {
        self.quotes = quotes
    }
    
}
