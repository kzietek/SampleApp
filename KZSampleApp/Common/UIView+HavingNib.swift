//
//  UIView+HavingNib.swift
//  KZSampleApp
//
//  Created by Kamil Ziętek on 03.07.2017.
//  Copyright © 2017 Kamil Ziętek. All rights reserved.
//

import UIKit

extension HavingNib where Self : UIView {
    
    static func fromNib(translatesAutoresizingMaskIntoConstraints: Bool = false) -> Self {
        guard let view = nib().instantiate(withOwner: nil, options: nil).first as? Self
            else { fatalError("No nib named: \(nibName)") }
        view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return view
    }
    
    static func nib() -> UINib {
        return UINib(nibName: nibName, bundle: nil)
    }
}
