//
//  SelectionScreenInteracting.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 03.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import Foundation

protocol SelectionScreenFlowNavigating {
    var onSelectSomething: ( (SelectionResult) -> () )? { get set }
}

protocol SelectionScreenInteracting {
    func viewDidLoad()
    func selectedSomething()
    var controller: SelectionScreenControlling? { get set }
}

final class SelectionScreenInteractor : SelectionScreenInteracting, SelectionScreenFlowNavigating {
    var onSelectSomething: ( (SelectionResult) -> () )?
    var controller: SelectionScreenControlling?
    
    func viewDidLoad() {
        NSLog("I'm loaded!")
    }
    
    func selectedSomething() {
        NSLog("Selected somehting")
        let selectedData = SelectionResult(result: Int(arc4random())) //stub
        controller?.setSelectionLabelText(selectedData.description)
        if let flowHandler = self.onSelectSomething {
            flowHandler(selectedData)
        }
    }
}
