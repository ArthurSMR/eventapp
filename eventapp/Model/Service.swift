//
//  Service.swift
//  eventapp
//
//  Created by Gabriela Resende on 22/04/19.
//  Copyright © 2019 Arthur Rodrigues. All rights reserved.
//

import Foundation
import UIKit


class Service {
    
    
    static func allEvents() -> [Event] {
        
        var tempEvents: [Event] = []
        
        let event1 = Event(image: UIImage(named: "festa1.jpg") ?? UIImage(named: "dory.jpg")!,
                           title: "Festa na praia")
        let event2 = Event(image: UIImage(named: "festa2.jpg") ?? UIImage(named: "dory.jpg")!,
                           title: "Baladinha top")
        let event3 = Event(image: UIImage(named: "festa3.jpg") ?? UIImage(named: "dory.jpg")!,
                           title: "Eletronica fera")
        let event4 = Event(image: UIImage(named: "festa4.jpg") ?? UIImage(named: "dory.jpg")!,
                           title: "Funkao estralando")
        let event5 = Event(image: UIImage(named: "festa5.jpeg") ?? UIImage(named: "dory.jpg")!,
                           title:"Restaurante")
        let event6 = Event(image: UIImage(named: "festa6.jpg") ?? UIImage(named: "dory.jpg")!,
                           title: "Show legal")
        
        tempEvents.append(event1)
        tempEvents.append(event2)
        tempEvents.append(event3)
        tempEvents.append(event4)
        tempEvents.append(event5)
        tempEvents.append(event6)
        
        return tempEvents
    }
}
