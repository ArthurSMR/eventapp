//
//  EventsTableViewCell.swift
//  eventapp
//
//  Created by Arthur Rodrigues on 19/04/19.
//  Copyright © 2019 Arthur Rodrigues. All rights reserved.
//
//oi
import UIKit

class EventsTableViewCell: UITableViewCell {

    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventNameLabel: UILabel!
    
    func setEvent(event: Event) {
        eventImage.image = event.image
        eventNameLabel.text = event.title
    }
}
