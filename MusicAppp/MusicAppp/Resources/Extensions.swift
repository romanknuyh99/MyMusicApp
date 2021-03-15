//
//  Extensions.swift
//  MusicAppp
//
//  Created by Roman Kniukh on 11.03.21.
//

import Foundation
import UIKit

extension UIView {
    var wight: CGFloat {
        return frame.size.width
    }
    
    var height: CGFloat {
        return frame.size.height
    }
    
    var left: CGFloat {
        return frame.origin.x
    }
    
    var right: CGFloat {
        return left + wight
    }
    
    var top: CGFloat {
        return frame.origin.y
    }
    var bottom: CGFloat {
        return top + height
    }
}
