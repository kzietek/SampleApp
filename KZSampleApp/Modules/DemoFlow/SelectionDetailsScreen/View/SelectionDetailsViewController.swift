//
//  SelectionDetailsViewController.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 04.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import UIKit
protocol SelectionDetailsViewControlling {
    func setSelectionLabelText(_ text: String?)
}

class SelectionDetailsViewController: UIViewController, HavingNib, SelectionDetailsViewControlling {
    static var nibName = "SelectionDetailsViewController"
    @IBOutlet fileprivate weak var selectionLabel: UILabel!
    private var interactor: SelectionDetailsScreenInteracting;
    
    required init(interactor: SelectionDetailsScreenInteracting) {
        self.interactor = interactor
        super.init(nibName: SelectionDetailsViewController.nibName, bundle: nil)
        self.interactor.controller = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.viewDidLoad()
    }
    
    func setSelectionLabelText(_ text: String?) {
        selectionLabel.text = text
    }
}
