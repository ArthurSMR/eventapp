//
//  EventDetail.swift
//  eventapp
//
//  Created by Arthur Rodrigues on 20/04/19.
//  Copyright © 2019 Arthur Rodrigues. All rights reserved.
//

import UIKit

class EventDetail: UIViewController {
    
    @IBOutlet weak var eventName: UILabel!

    var descriptionEvent: EventsTableViewCell?

    override func viewDidLoad() {
        super.viewDidLoad()

        eventName.text = "\((descriptionEvent?.eventNameLabel)!)"
    }

}
