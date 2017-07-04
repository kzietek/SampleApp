//
//  SelectionResult.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 03.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import Foundation

/*
 Here I need a success/error enum with generic payload.
 */

fileprivate struct Constants {
    static let textFormat = NSLocalizedString("Selected: %ld", comment: "Description of selected result.")
}

struct SelectionResult {
    var result: Int
}

extension SelectionResult: CustomStringConvertible {
    var description: String {
        return String(format:Constants.textFormat, result)
    }
}
