//
//  File.swift
//  Selfigramm
//
//  Created by Artsiom Sazonau on 31.03.17.
//  Copyright © 2017 Arts Corp. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func maskAsRounded() {
        layer.cornerRadius = frame.width / 2
        layer.masksToBounds = true
    }
    
}
