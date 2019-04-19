//
//  Event.swift
//  eventapp
//
//  Created by Arthur Rodrigues on 19/04/19.
//  Copyright © 2019 Arthur Rodrigues. All rights reserved.
//

import Foundation
import UIKit

class Event {
    var image: UIImage
    var title: String
    
    init(image: UIImage, title: String) {
        self.image = image
        self.title = title
    }
}
