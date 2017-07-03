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

struct SelectionResult {
    var result: Int
}

extension SelectionResult: CustomStringConvertible {
    var description: String {
        return "Selected: \(result)"
    }
}
