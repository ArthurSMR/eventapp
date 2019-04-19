//
//  HomeViewController.swift
//  eventapp
//
//  Created by Arthur Rodrigues on 19/04/19.
//  Copyright © 2019 Arthur Rodrigues. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var events: [Event] = []
    //reference to the database
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        events = createEventsArray()
        
    }
    
    func createEventsArray() -> [Event] {
        
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

extension HomeViewController {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (events.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let event = events[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventsTableViewCell") as! EventsTableViewCell
        
        cell.setEvent(event: event)
        return cell
    }
    

    
}
