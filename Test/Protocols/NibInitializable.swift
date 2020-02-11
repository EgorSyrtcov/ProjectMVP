//
//  NibInitializable.swift
//  Test
//
//  Created by Egor Syrtcov on 04/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

protocol NibInitializable {
    @nonobjc static var nibName: String { get }
    static func initFromNib() -> Self
}

extension NibInitializable where Self: UIView {
    @nonobjc static var nibName: String {
        return String(describing: Self.self)
    }
    
    @nonobjc static var nib: UINib {
        return UINib(nibName: nibName, bundle: nil)
    }
    static func initFromNib() -> Self {
        guard let view = nib.instantiate(withOwner: nil, options: nil).first as? Self else {
            fatalError("Could not instantiate view from nib with name \(nibName).")
        }
        return view
    }
}
