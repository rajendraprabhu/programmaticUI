//
//  BooksResponse.swift
//  Books
//
//  Created by Prabhu Bose on 3/10/20.
//  Copyright © 2020 Prabhu Bose. All rights reserved.
//

import Foundation

struct BooksResponse: Decodable {
    var timestamp: Int
    var books: [Book]
}

struct Book: Decodable {
    var title: String
    var pageCount: Int?
    var thumbnailUrl: URL?
    var shortDescription: String?
    var authors: [String]
    var categories: [String]
    
    var authorsText: String {
        return "by " + authors.joined(separator: ", ")
    }
}
