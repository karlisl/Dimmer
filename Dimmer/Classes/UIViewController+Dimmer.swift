//
//  UIViewController+Dimmer.swift
//  Pods
//
//  Created by DragonCherry on 5/12/17.
//
//

import UIViewKVO

extension UIViewController {
    
    open func hideDimmerLoading() {
        if let navigationController = self.navigationController {
            navigationController.view.hideDimmerLoading()
            navigationController.interactivePopGestureRecognizer?.isEnabled = true
        } else {
            view.hideDimmerLoading()
        }
        navigationController?.navigationBar.isUserInteractionEnabled = true
    }
    
    public func showDimmerLoading(alpha: CGFloat = 0.4) {
        hideDimmerLoading()
        navigationController?.navigationBar.isUserInteractionEnabled = false
        if let navigationController = self.navigationController {
            navigationController.interactivePopGestureRecognizer?.isEnabled = false
            navigationController.view.showDimmerLoading(alpha: alpha)
        } else {
            view.showDimmerLoading(alpha: alpha)
        }
    }
}
