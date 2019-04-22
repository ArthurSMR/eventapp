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
    
    var selectedEvent: Event!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        events = createEventsArray()
        
    }
    
    func createEventsArray() -> [Event] {
    
        return Service.allEvents()
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
    
    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.selectedEvent = self.events[indexPath.row]
        
//        let vc = storyboard?.instantiateInitialViewController(withIdentifier: "DetailEventViewController") as? DetailEventViewController
//        self.navigationController?.pushViewController(vc!, animated: true)
        self.performSegue(withIdentifier: "detailEvent", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailEvent" {
            
            let detailVc = segue.destination as! DetailEventViewController
            
            

            detailVc.labelText = self.selectedEvent.title
            detailVc.imageV = self.selectedEvent.image
            
            
        }
    }
    
    
}
