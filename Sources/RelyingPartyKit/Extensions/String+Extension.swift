//
//  String+Extension.swift
//  

import Foundation

extension String: LocalizedError {
    public var errorDescription: String? {
        return self
    }
}
