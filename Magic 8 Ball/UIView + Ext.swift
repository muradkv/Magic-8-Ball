//
//  UIView + Ext.swift
//  Magic 8 Ball
//
//  Created by murad on 15.09.2024.
//

import UIKit

extension UIView {
    func animateView(_ view: UIView) {
        UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseIn) {
            view.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        } completion: { _ in
            UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 2) {
                view.transform = CGAffineTransform(scaleX: 1, y: 1)
            }
        }
    }
}
