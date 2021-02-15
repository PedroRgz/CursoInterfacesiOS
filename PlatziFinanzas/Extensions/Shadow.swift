//
//  Shadow.swift
//  PlatziFinanzas
//
//  Created by Pedro Rodríguez on 05/02/21.
//

import UIKit

//los bordes utilizan cgColor
extension UIView{
    var borderUIColor: UIColor{
        get{
            guard let color = layer.borderColor else {
                return UIColor.black
            }
            return UIColor(cgColor: color)
        }
        set{
            layer.borderColor = newValue.cgColor
        }
    }
}
