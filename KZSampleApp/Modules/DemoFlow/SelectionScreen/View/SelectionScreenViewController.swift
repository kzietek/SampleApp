//
//  SelectionScreenViewController.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 03.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import UIKit

protocol SelectionScreenControlling {
    func setSelectionLabelText(_ text: String?)
}

class SelectionScreenViewController: UIViewController, HavingNib, SelectionScreenControlling {
    static var nibName = "SelectionScreenViewController"
    @IBOutlet fileprivate weak var selectionLabel: UILabel!
    private var interactor: SelectionScreenInteracting;
    
    
    required init(interactor: SelectionScreenInteracting) {
        self.interactor = interactor
        super.init(nibName: SelectionScreenViewController.nibName, bundle: nil)
        self.interactor.controller = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.viewDidLoad()
    }
    
    @IBAction func selectedSomethingAction(sender: UIButton) {
        interactor.selectedSomething()
    }
    
    func setSelectionLabelText(_ text: String?) {
        selectionLabel.text = text
    }
}
