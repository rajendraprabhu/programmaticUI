//
//  Loader.swift
//  Books
//
//  Created by Prabhu Bose on 3/10/20.
//  Copyright © 2020 Prabhu Bose. All rights reserved.
//

import Foundation

struct Loader {
    static func load(from fileName: String) -> [Book]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(BooksResponse.self, from: data)
                return jsonData.books
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}
