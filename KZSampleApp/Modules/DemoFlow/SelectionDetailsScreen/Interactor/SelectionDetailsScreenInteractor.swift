//
//  SelectionDetailsScreenInteractor.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 04.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import Foundation

protocol SelectionDetailsScreenInteracting {
    func viewDidLoad()
    var controller: SelectionDetailsViewControlling? { get set }
}

fileprivate struct Constants {
    static let resultFormat = NSLocalizedString("And the result is... <%@>", comment: "Result format on SelectionDetailsScreen")
}

final class SelectionDetailsScreenInteractor: SelectionDetailsScreenInteracting {
    var controller: SelectionDetailsViewControlling?
    let result: SelectionResult
    
    required init(result:SelectionResult) {
        self.result = result
    }
    
    func viewDidLoad() {
        let displayText = String(format: Constants.resultFormat, result.description)
        controller?.setSelectionLabelText(displayText)
    }
}
