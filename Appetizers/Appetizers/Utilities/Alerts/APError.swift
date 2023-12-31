//
//  APError.swift
//  Appetizers
//
//  Created by Niclas on 22.09.23.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
