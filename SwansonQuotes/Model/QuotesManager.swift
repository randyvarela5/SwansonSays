//
//  QuotesManager.swift
//  SwansonQuotes
//
//  Created by Randy Varela on 3/25/25.
//

import Foundation

struct QuotesManager {
    
    let quotesURL = "https://ron-swanson-quotes.herokuapp.com/v2/quotes"
    
    func performRequest(urlString: String, completion: @escaping (QuotesModel?, Error?) -> Void) {
        
        guard let url = URL(string: urlString)
        else {
            completion(nil, NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"]))
                        return
        }
        
        let urlSession = URLSession(configuration: .default)
        
        let urlSessionTask = urlSession.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(nil, error)
                return
            }
            
            if let safeData = data{
                if let quotes = self.parseJSON(quotesData: safeData) {
                    completion(quotes, nil)
                } else {
                    completion(nil, NSError(domain: "", code: -2, userInfo: [NSLocalizedDescriptionKey : "failed to parse quotes"]))
                }
            }
        }
        urlSessionTask.resume()
    }
    
    func parseJSON(quotesData: Data) -> QuotesModel? {
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode([String].self, from: quotesData)
            return QuotesModel(quotes: decodedData)
        }
        catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
