//
//  UIView+Ext.swift
//  RickAndMorty
//
//  Created by Joana Ferreira on 24/10/2024.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
