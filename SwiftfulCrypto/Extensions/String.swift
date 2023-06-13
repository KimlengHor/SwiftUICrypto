//
//  String.swift
//  SwiftfulCrypto
//
//  Created by Kimleng Hor on 6/12/23.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
