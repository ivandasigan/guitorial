//
//  View.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/3/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import Foundation

extension UIView{
    
    func bounce() {
        self.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: 0.3,
                       initialSpringVelocity: 16.0,
                       options: UIView.AnimationOptions.allowUserInteraction,
                       animations: {
                        
                        self.transform = CGAffineTransform.identity
                        
        }, completion: nil)
    }
    
    
}
